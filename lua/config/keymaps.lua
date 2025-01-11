-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader + a fait la même chose que 'A' en mode normal
map("n", "<leader>a", "A", opts)
map("n", "<leader>z", "I", opts)
