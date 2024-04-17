local map = vim.keymap.set

return {
  "akinsho/flutter-tools.nvim",
  lazy = true,
  event = { "BufRead *.dart" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  keys = {
    {
      "<leader>flc",
      "<cmd>Telescope flutter commands<CR>",
      mode = "n",
      { noremap = true, silent = true },
    },
  },
}
