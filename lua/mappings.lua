require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- Gneral key mapping
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Window vertical split mappings
map("n", "<leader>sv", ":vsplit<CR>", { desc = "Open vertical split" })
map("n", "<leader>sfv", ":vsplit ", { desc = "Open file in vertical split" })

-- Window horizontal split mappings
map("n", "<leader>sh", ":split<CR>", { desc = "Open horizontal split" })
map("n", "<leader>sfh", ":split ", { desc = "Open file in horizontal split" })
