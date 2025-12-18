vim.g.mapleader = " "

-- Move to explorer view
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Moves selected text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv ")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv ")
vim.keymap.set('i', '<C-i>', '<Esc>:m .-2<CR>==gi', { desc = "Move current line up" })
vim.keymap.set('i', '<C-k>', '<Esc>:m .+1<CR>==gi', { desc = "Move current line down" })

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

-- TS server stuff
--vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>")
--vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>")
--vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>")
--vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>")

-- Open diagnostic
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

-- Normal delete
vim.keymap.set("i", "<M-BS>", "<C-W>")

-- Yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to system clipboard" })

-- Paste from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from system clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>P", '"+P', { desc = "Paste before cursor (system clipboard)" })

-- Delete without yanking (very Primeagen)
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without yanking" })

