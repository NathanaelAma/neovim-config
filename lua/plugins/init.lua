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

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        -- Web Development
        "html-lsp",
        "css-lsp",
        "prettier",
        "solargraph",
        "rubocop",
        "rufo",
        "typescript-language-server",
        "yaml-language-server",
        "json-lsp",
        -- Mobile Development
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        -- General
        "gitignore",
        -- Web Development
        "html",
        "javascript",
        "typescript",
        "tsx",
        "css",
        "scss",
        "http",
        "toml",
        "yaml",
        "ruby",
        -- Mobile Development
        "dart",
      },
    },
  },

  { "wakatime/vim-wakatime", lazy = false },

  { "stevearc/vim-vscode-snippets", lazy = false },

  { "b0o/schemastore.nvim", lazy = false },
}
