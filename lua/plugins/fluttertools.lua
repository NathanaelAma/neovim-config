local map = vim.keymap.set

return {
  "akinsho/flutter-tools.nvim",
  lazy = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
  },
  config = function()
    map("n", "<leader>flc", "<cmd>Telescope flutter commands<CR>", { noremap = true, silent = true })
  end,
}
