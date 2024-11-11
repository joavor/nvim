return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('everforest').setup {
        -- Make background transparent
        transparent_background_level = 2,
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd [[colorscheme everforest]]

      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },

  {
    -- Modify the statusline
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    init = function()
      require('lualine').setup {
        options = {
          theme = 'everforest',
          icons_enabled = true,
        },
      }
    end,
  },
}
