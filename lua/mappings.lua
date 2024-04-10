require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- Git
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "Open LazyGit" })
