return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} },
    },
    keys = {
      { '<leader>fm', '<cmd>Oil<cr>', desc = '[F]ile [M]anagement' },
    },
  },
}
