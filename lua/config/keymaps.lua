-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- keymaps.lua
local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }

map('n', '<leader>G', '<cmd>Telescope live_grep<CR>', options)
