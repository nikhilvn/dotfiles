-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Delete a single character without copying into the register
map({ "n", "v" }, "x", '"_x')

-- Find and center
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Buffers
map("n", "<Tab>", ":bnext<CR>", { silent = true })
map("n", "<S-Tab>", ":bprevious<CR>", { silent = true })
map("n", "<leader>`", "<C-^>", { silent = true })

-- Select all
map({ "n", "v" }, "<C-a>", "gg<S-v>G", { silent = true })
