-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
-- set a keybinding for the AiderOpen function
map("n", "<leader>oa", "<cmd>lua AiderOpen()<cr>", { noremap = true, silent = true })
-- set a keybinding for the AiderBackground function
map("n", "<leader>ob", "<cmd>lua AiderBackground()<cr>", { noremap = true, silent = true })
map("v", "p", '"_dP', { noremap = true, silent = true, desc = "Paste without overwriting register" })
map({ "n", "v" }, "d", '"_d', { desc = "Delete without saving to buffer" })
map("n", "D", '"_D', { desc = "Delete line without saving to buffer" })
map("n", "x", '"_x', { desc = "Delete character without saving to buffer" })

return {
  keys = {
    { "d", '"_d', mode = { "n", "v" }, desc = "Delete without saving to buffer" },
    { "D", '"_D', mode = "n", desc = "Delete line without saving to buffer" },
    { "x", '"_x', mode = "n", desc = "Delete character without saving to buffer" },
  },
}
