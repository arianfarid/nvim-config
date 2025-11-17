vim.g.mapleader = " "

-- Move to explorer view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Moves selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv ")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv ")

-- Keeps cursor in place during J
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor center on page up down
vim.keymap.set("n", "<C-h>", "<C-d>zz")
vim.keymap.set("n", "<C-y>", "<C-u>zz")

-- Search terms stay in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keeps paste over in memory
vim.keymap.set("x", "<leader>p", "\"_dP")


