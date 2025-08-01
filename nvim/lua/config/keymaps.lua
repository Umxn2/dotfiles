-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
local fzf = require("fzf-lua")

vim.keymap.set("n", "<leader>ff", fzf.files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", fzf.buffers, { desc = "Open buffers" })
vim.keymap.set("n", "<leader>fh", fzf.help_tags, { desc = "Help tags" })
vim.keymap.set("n", "<leader>fs", fzf.git_status, { desc = "Git status" })
vim.keymap.set("n", "<leader>fc", fzf.commands, { desc = "Vim commands" })
