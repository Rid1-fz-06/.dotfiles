c = get_config()  # type: ignore

c.InteractiveShellApp.ignore_cwd = False
c.InteractiveShellApp.matplotlib = "qt6"
c.InteractiveShellApp.module_to_run = ""
c.InteractiveShellApp.pylab = "qt6"
c.Application.log_datefmt = "%Y-%m-%d %H:%M:%S"
c.Application.log_format = "[%(name)s]%(highlevel)s %(message)s"
c.Application.log_level = "DEBUG"
c.BaseIPythonApplication.add_ipython_dir_to_sys_path = False
c.BaseIPythonApplication.auto_create = False
