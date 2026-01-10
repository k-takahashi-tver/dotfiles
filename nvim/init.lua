require("config.lazy")
require("config.options")
require("config.keymaps")



-- Windows: use PowerShell as default shell
if vim.fn.has("win32") == 1 then
    vim.opt.shell = "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe"
    vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
end
