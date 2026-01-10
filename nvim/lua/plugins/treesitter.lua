return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
          ensure_installed = {
            "lua", "vim", "vimdoc",
            "python", "rust",
            "bash", "json", "yaml", "markdown", "markdown_inline",
            "html", "sql",
          },
          auto_install = true,
          highlight = { enable = true },
        },
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },
    {
        "windwp/nvim-ts-autotag",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = {},
    },
}

