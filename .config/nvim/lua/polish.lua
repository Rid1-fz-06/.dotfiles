vim.treesitter.language.register("bash", "zsh")
-- terminal to open any specific interpretor

-- create and return any specific terminal using toggleterm
local function __terminal(command)
	return require("toggleterm.terminal").Terminal:new({
		cmd = command,
		direction = "float",
		close_on_exit = true,
	})
end

local ipython = __terminal("ipython")
local htop = __terminal("htop")
local shell = __terminal(os.getenv("SHELL"))

function _ipython_toggle()
	ipython.dir = vim.fn.getcwd()
	ipython:toggle()
end

function _htop_toggle()
	htop:toggle()
end

function _shell_toggle(size, direction)
	shell.dir = vim.fn.getcwd()
	shell:toggle(size, direction)
end

-- script runner

local python_t = ipython
local lua_t = __terminal([[lua -e "_PROMPT=\"\\n \"" -i]])
local bash_t = __terminal([[env PS1="\n " bash --norc]])
local sh_t = __terminal([[env PS1="\n " sh --norc]])
local zsh_t = __terminal([[env PS1=$'\n'" " zsh --no-rcs]])

function _run_script()
	local filetype = vim.bo.filetype

	local function __run(terminal, command)
		local inner = function()
			local curr_file = vim.fn.expand("%:p")
			terminal.dir = vim.fn.getcwd()
			terminal:open()
			terminal:send(string.format(command, curr_file))
		end
		return inner
	end

	-- add functions to call interpretor and run script here
	local runner = {
		python = __run(python_t, [[%%run %s]]),
		lua = __run(lua_t, [[assert(loadfile("%s"))()]]),
		bash = __run(bash_t, [[source %s]]),
		sh = __run(sh_t, [[source %s]]),
		zsh = __run(zsh_t, [[source %s]]),
	}

	-- call function with appropriate filetype
	local case = runner[filetype]
	if case then
		case()
	end
end

-- add new filetype
vim.filetype.add({
	extension = {
		qml = "qml",
		ipy = "python",
	},
	pattern = {
		["/home/.*/.config/hypr/.*.conf"] = "hyprlang",
		[".*/hyperland/.*.conf"] = "hyprlang",
		["/home/.*/.config/waybar/config"] = "jsonc",
	},
})

-- commentstrings
vim.api.nvim_create_augroup("set_commentstring", { clear = true })

local cstrings = {
	hyprlang = "#%s",
	qml = "//%s",
}

for lang, cstring in pairs(cstrings) do
	vim.api.nvim_create_autocmd("FileType", {
		group = "set_commentstring",
		pattern = lang,
		command = [[set commentstring=]] .. cstring,
	})
end
