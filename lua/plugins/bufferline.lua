return {
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          mode = "buffers",
          separator_style = "none",
          always_show_bufferline = false,
          show_buffer_close_icons = false,
          show_close_icon = false,
          color_icons = true,
          max_name_length = 18,
          max_prefix_length = 15,
          truncate_names = true,
          tab_size = 5,
          transparent = true,
        },
      })
    end,
  },
}

