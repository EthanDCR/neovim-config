-- Terminal keybindings
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })

-- Telescope
vim.keymap.set("n", "<leader><leader>", function()
  require("telescope.builtin").find_files()
end, { desc = "Find files" })

vim.keymap.set("n", "<leader>g", function()
  require("telescope.builtin").live_grep()
end, { desc = "Live grep" })

-- File tree
vim.keymap.set("n", "<CR>e", ":NvimTreeToggle<CR>", { desc = "Toggle file tree" })

-- Buffer navigation
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
