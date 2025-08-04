return {
  -- 'mellow-theme/mellow.nvim',
  -- 'xero/miasma.nvim',
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    -- vim.cmd.colorscheme 'mellow'
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
