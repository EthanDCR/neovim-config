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

-- Underscore shortcuts
-- Option 1: Type 'uu' in insert mode to get '_'
vim.keymap.set("i", "uu", "_", { desc = "Insert underscore" })

-- Option 2: Use Ctrl+u in insert mode to get '_'
vim.keymap.set("i", "<C-u>", "_", { desc = "Insert underscore" })

-- Option 3: Command mode - type :us and press enter to insert '_' at cursor
vim.api.nvim_create_user_command("Us", function()
  local pos = vim.api.nvim_win_get_cursor(0)
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos[2]) .. "_" .. line:sub(pos[2] + 1)
  vim.api.nvim_set_current_line(nline)
  vim.api.nvim_win_set_cursor(0, { pos[1], pos[2] + 1 })
end, { desc = "Insert underscore at cursor" })
