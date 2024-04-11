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

  { "NvChad/nvcommunity" },

  { import = "nvcommunity.completion.copilot" },
  { import = "nvcommunity.editor.rainbowdelimiters" },
  { import = "nvcommunity.editor.treesittercontext" },
  { import = "nvcommunity.git.lazygit" },

  { "max397574/better-escape.nvim", event = "InsertCharPre", opts = {
    timeout = 300,
  } },
  {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    opts = {
      symbol = "▏",
      -- symbol = "│",
      options = { try_as_border = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = {
          "help",
          "alpha",
          "dashboard",
          "neo-tree",
          "Trouble",
          "trouble",
          "lazy",
          "mason",
          "notify",
          "toggleterm",
          "nvimtree",
          "lazyterm",
        },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").load_extension "lazygit"
    end,
  },
}
