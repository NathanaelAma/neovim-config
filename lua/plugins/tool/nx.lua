
return {
  {
    "Equilibris/nx.nvim",

    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
      "akinsho/toggleterm.nvim",
    },

    opts         = {
      nx_cmd_root = "npx nx",
    },
    -- Plugin will load when you use these keys
    keys         = {
      { "<leader>nx", "<cmd>Telescope nx actions<CR>", desc = "nx actions" }
    },
  },
}
