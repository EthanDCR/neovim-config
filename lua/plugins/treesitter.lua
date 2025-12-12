return {
  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "html", "css", "javascript", "typescript", "lua", "go", "gomod", "gowork" },
        highlight = { enable = true },
      })
    end,
  },
}