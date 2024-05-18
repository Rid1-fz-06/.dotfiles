-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		-- Configure core features of AstroNvim
		features = {
			large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
			autopairs = true, -- enable autopairs at start
			cmp = true, -- enable completion at start
			diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
			highlighturl = true, -- highlight URLs at start
			notifications = true, -- enable notifications at start
		},
		-- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
		diagnostics = {
			virtual_text = true,
			underline = true,
		},
		-- vim options can be configured here
		options = {
			-- neovim options
			opt = {
				relativenumber = false,
				number = true,
				spell = false,
				signcolumn = "yes:2",
				wrap = false,
				mouse = "nv",
				mousemodel = "extend",
				swapfile = false,
				cmdheight = 1,
			},

			-- global variables
			g = {
				autoformat_enabled = true,
				cmp_enabled = true,
				autopairs_enabled = true,
				diagnostics_mode = 3,
				icons_enabled = true,
				ui_notifications_enabled = true,
				neovide_cursor_animation_length = 0,
				neovide_scroll_animation_length = 0,
			},
		},
		-- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
		mappings = {
			-- normal mode
			n = {
				["<s-l>"] = { "<cmd>bn<cr>", desc = "Next Buffer" },
				["<s-h>"] = { "<cmd>bp<cr>", desc = "Previous Buffer" },
				["<Leader>tp"] = { "<cmd>lua _ipython_toggle()<cr>", desc = "Toggleterm IPython" },
				["<Leader>r"] = { "<cmd>lua _run_script()<cr>", desc = "Run Script" },
				["<Leader>tt"] = { "<cmd>lua htop:toggle()<cr>", desc = "Toggleterm Htop" },
			},

			-- terminal mode
			t = {
				["<esc>"] = { "<cmd>quit<cr>", desc = "Close Terminal" },
			},

			-- insert mode
			i = {},
		},
	},
}
