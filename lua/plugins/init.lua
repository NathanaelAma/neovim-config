return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  { "wakatime/vim-wakatime", lazy = false },

  { "stevearc/vim-vscode-snippets", lazy = false },

  { "b0o/schemastore.nvim", lazy = false },

  {
    "max397574/better-escape.nvim",
    event = "InsertCharPre",
    opts = {
      timeout = 300,
    },
  },
}
