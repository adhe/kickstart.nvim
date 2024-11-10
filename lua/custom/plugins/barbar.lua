-- bufferline for Neovim

return {
  'romgrk/barbar.nvim',
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', enabled = true },
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    animation = false,
    -- insert_at_start = true,
    icons = {
      filetype = {
        enabled = true,
      },
    },
  },
  version = '^1.0.0',
}
