return {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    opts = function()
      return require "plugins.configs.gitsigns"
    end,
  }
