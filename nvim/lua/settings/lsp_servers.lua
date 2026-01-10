-- Neovim 0.11+ style
local lsp = vim.lsp

-- 共通 capabilities（cmp と連携してるなら）
local capabilities = vim.lsp.protocol.make_client_capabilities()

-- Python
lsp.config.pyright = {
  capabilities = capabilities,
}

-- Rust
lsp.config.rust_analyzer = {
  capabilities = capabilities,
}

-- 有効化
lsp.enable("pyright")
lsp.enable("rust_analyzer")

