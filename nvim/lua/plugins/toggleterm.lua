return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- 一番おすすめ：フローティングで邪魔にならない
        direction = "float",
        float_opts = {
          border = "rounded",
        },

        -- 起動時に insert に入る（シェルをすぐ打てる）
        start_in_insert = true,

        -- 開いたまま状態保持
        persist_mode = true,

      })

      -- terminal から抜けやすくする（Escでノーマルへ）
      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
      vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
      vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
      vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
      vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })
    end,

    -- これで <C-\> で開閉（デフォルト）
    keys = {
      { [[<C-\>]], "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    },
  },
}

