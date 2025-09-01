-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Keymaps for new splits
vim.keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Vertical split" })

-- Move between splits with Ctrl + hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move down" })

vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move right" })

-- Move between splits with Ctrl + hjkl
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move right" })

-- Keys to switch between open buffers

vim.keymap.set("n", "<leader>h", ":bp<CR>", { desc = "Buffer previous" })
vim.keymap.set("n", "<leader>l", ":bn<CR>", { desc = "Buffer next" })

vim.opt.clipboard="unnamedplus"
