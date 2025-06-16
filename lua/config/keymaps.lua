-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set leader + e to open netrw (file explorer)
vim.api.nvim_set_keymap("n", "<Leader>e", ":Explore<CR>", { noremap = true, silent = true })

-- Optional: Unmap space + e to prevent conflict (if needed)
vim.api.nvim_del_keymap("n", "<Space>e")

-- Set Enter + e to open netrw (file explorer)
vim.api.nvim_set_keymap("n", "<CR>e", ":Explore<CR>", { noremap = true, silent = true })

-- Set leader + e to toggle netrw (file explorer)
vim.api.nvim_set_keymap("n", "<Leader>e", ":Lexplore<CR>", { noremap = true, silent = true })

-- Optional: Unmap space + e to prevent conflict (if needed)
vim.api.nvim_del_keymap("n", "<Space>e")
