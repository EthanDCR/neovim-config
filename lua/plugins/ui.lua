return {
  -- Alpha-nvim for startup screen
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- ASCII art
      dashboard.section.header.val = {
        [[                                ]],
        [[           ▌▋▍▏                 ]],
        [[        ▊▃▅▇██▂                 ]],
        [[      ▏▊▃▇▇▇█▃▍                 ]],
        [[     ▏▉▄▇▅▆▆█▍                  ]],
        [[    ▏▉▄█▄▅███▂                  ]],
        [[    ▋▄█▃▅▆▇█▆▊                  ]],
        [[     ▎▃▅▅▇▇▇▎                   ]],
        [[      ▋▄▅▄▆▅                    ]],
        [[      ▌▃▃▄▅▅                    ]],
        [[      ▌▃▃▅▅▅                    ]],
        [[      ▋▆▆▅█▇                    ]],
        [[      ▌▃▄▅▅▅                    ]],
        [[      ▋▄▃▆▆▅                    ]],
        [[      ▋▄▃▃██                    ]],
        [[      ▊▃▃▄▆▆                    ]],
        [[      ▊▄▄▄▅▆                    ]],
        [[      ▊▄▄▃▆▆                    ]],
        [[      ▊▂▃▅▆▆▏                   ]],
        [[      ▉▃▄▂▆▆▎                   ]],
        [[▌▊    ▉▂▃▄▆▆▎                   ]],
        [[▄█▇▍  ▉▃▄▄▅▅▍                   ]],
        [[▇█▆█▋ ▉▅▃▅▆▅▍                   ]],
        [[█▇▍█▄▏▉▂▁▂▃▃▍                   ]],
        [[█▇▃▅█▅▊▆▅▅▂▆▆▋   ▏▋▁▋▏          ]],
        [[██▄▎▍▂▇███▇▄▂▁▃▃▌ ▍█▇█▂          ]],
        [[▇█▇▌▎ ▏▌▉▊▃▅▁▉▄▃▅▎▅█▋█▅          ]],
        [[ ██▆▍  ▍▌ ▂▄▃▂▄▄▇▇█▄▍▎█▅         ]],
        [[  ██▂▏ ▏▁▏▁▃▃▃▃▃▋▌▋▌▏ ▌▄█▍       ]],
        [[  ▇██   ▁▂▊▌▋▌▋▋▊▊    ▏▃█▁        ]],
        [[   ███ ▎▉▏▌▎▎▍▎▎▎     ▎█▅▏        ]],
        [[  ██▆ ▏▉▍▍▊▌▌▌▌▌▌▍    ▎█▅▏        ]],
        [[ ▅██▉▎▋▍▏▊▉▊▋▋▋▋▌▌    ▏▃█▉        ]],
        [[▆██▋▌▌▉▏  ▏ ▏▏ ▏     ▌▍▋▅█▋       ]],
        [[▅██▃   ▎▋  ▍▊▋▋▊▋▋▋▏▁▋▉▏▋▌▍▍▇█▋   ]],
        [[███▂    ▎▋▉▁▁▂▄▂▄▂▁▃▉▋▌▍▉▉▎ ▍█▇▏  ]],
        [[██▅▎      ▉▊▊▉▊▋▊▉▋▋▌▌▃▄▋▍▉▉▂█▁  ]],
        [[███▆▋▏    ▍▍▍▍▍▍▍▍▍▏▎▊▊▄█▆▂▊▊█▅  ]],
        [[█████▆▁▌▎▏          ▍▁▃▆▂▅████▅  ]],
        [[████████▆▅▉▉▉▉▉▉▉▄▅███▅▃▉▆███▉   ]],
        [[ ▅█████████████████████████▄▏     ]],
        [[  ▉▇█████████████████████▇▉▏      ]],
        [[     ▌▁▄▇▇███████████▇▇▄▂▌        ]],
        [[          ▍▌▌▌▌▌▂█▊▌▌▌▌▌▍         ]],
        [[                ▏▏▏               ]],
        [[                                ]],
      }

      -- Menu
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
        dashboard.button("g", "  Live grep", ":Telescope live_grep <CR>"),
      }

      -- Quote section (positioned higher)
      local quote_section = {
        type = "text",
        val = "An idiot admires complexity, a genius admires simplicity",
        opts = {
          position = "center",
          hl = "Type",
        }
      }

      dashboard.config.layout = {
        { type = "padding", val = 2 },
        dashboard.section.header,
        { type = "padding", val = 2 },
        quote_section,
        { type = "padding", val = 2 },
        dashboard.section.buttons,
        { type = "padding", val = 1 },
      }

      -- Settings
      dashboard.section.header.opts.hl = "Include"
      dashboard.section.buttons.opts.hl = "Keyword"
      dashboard.section.footer.opts.hl = "Type"

      dashboard.opts.opts.noautocmd = true

      alpha.setup(dashboard.opts)
    end,
  },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup()
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").setup()
    end,
  },

  -- Color preview
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "*",
        css = { rgb_fn = true },
        html = { names = false },
      })
    end,
  },
}