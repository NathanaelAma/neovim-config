return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        -- General
        "gitignore",
        "dockerfile",
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

  {
    "windwp/nvim-ts-autotag",
    event = { "BufReadPost", "BufNewFile", "BufWritePre" },
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "BufReadPost",
    opts = {
      mode = "cursor",
      patterns = {
        default = {
          "class",
          "function",
          "method",
        },
      },
      max_lines = 2
    },
  },
}
