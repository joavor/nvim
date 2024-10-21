return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = {
      { 'echasnovski/mini.icons', opts = {} },
    },
    keys = {
      { '<leader>fm', '<cmd>Oil<cr>', desc = '[F]ile [M]anagement' },
      {
        '<leader>nm',
        function()
          vim.cmd 'vsplit | vertical resize 64'
          require('oil').open 'C:\\dev\\personal\\notes\\'
        end,
        desc = '[F]ile [M]anagement',
      },
    },
  },
}
