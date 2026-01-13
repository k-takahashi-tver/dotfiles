-- vim.cmd.colorscheme("tokyonight")

-- lua ファイルのコメント文字色を調整
vim.api.nvim_set_hl(0, "Comment", {
    fg = "#8b949e", -- 明るめグレー
    italic = true,
})

-- netrm を無効化（起動時の変な挙動をなくす）
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- leader を Space に割り当てる
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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
