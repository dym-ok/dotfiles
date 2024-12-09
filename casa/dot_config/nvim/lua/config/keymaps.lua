-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
-- set a keybinding for the AiderOpen function
map("n", "<leader>oa", "<cmd>lua AiderOpen()<cr>", { noremap = true, silent = true })
-- set a keybinding for the AiderBackground function
map("n", "<leader>ob", "<cmd>lua AiderBackground()<cr>", { noremap = true, silent = true })
