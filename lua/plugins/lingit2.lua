return {
  'SuperBo/fugit2.nvim',
  dependencies = {
    'MunifTanjim/nui.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
    },

  opts = {
    width = 100,

  },
  cmd = { 'Fugit2', 'Fugit2Diff', 'Fugit2Graph' },
  keys = {
    { '<leader>F', mode = 'n', '<cmd>Fugit2<cr>' }
  }
  }

