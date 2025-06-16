-- bootstrap lazy.nvim, LazyVim and your plugins

require("config.lazy")
require("config.keymaps")
require("config.options")

vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true })
