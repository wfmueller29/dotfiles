vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-j>", "<C-W>j")
vim.keymap.set("n", "<C-k>", "<C-W>k")
vim.keymap.set("n", "<C-h>", "<C-W>h")
vim.keymap.set("n", "<C-l>", "<C-W>l")

vim.keymap.set("t", "<C-j>", "<C-W>j")
vim.keymap.set("t", "<C-k>", "<C-W>k")
vim.keymap.set("t", "<C-h>", "<C-W>h")
vim.keymap.set("t", "<C-l>", "<C-W>l")

-- next greatest remap ever : asbjornHaland
-- should yank to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree" })
