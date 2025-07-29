return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = false,
    -- insert_at_start = true,
    -- …etc.
  },
  config = function(_, opts)
    require('barbar').setup(opts)

    -- Keymaps
    local map = vim.api.nvim_set_keymap
    local keymap_opts = { noremap = true, silent = true }

    -- Move to previous/next
    map('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', keymap_opts)
    map('n', '<Tab>', '<Cmd>BufferNext<CR>', keymap_opts)

    -- Close buffer
    map('n', '<Space>x', '<Cmd>BufferClose<CR>', keymap_opts)
  end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
