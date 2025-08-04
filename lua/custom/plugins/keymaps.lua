return {
  {
    'folke/which-key.nvim', -- Optional: for keymap documentation
    event = 'VeryLazy',
    config = function()
      -- Set up keymaps
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }

      -- 1. jk to exit insert mode
      map('i', 'jk', '<ESC>', { desc = 'Exit insert mode' })
      map('i', 'kj', '<ESC>', { desc = 'Exit insert mode (alternative)' })

      -- 2. Better window navigation
      -- map("n", "<C-h>", "<C-w>h", { desc = "Navigate to left window" })
      -- map("n", "<C-j>", "<C-w>j", { desc = "Navigate to bottom window" })
      -- map("n", "<C-k>", "<C-w>k", { desc = "Navigate to top window" })
      -- map("n", "<C-l>", "<C-w>l", { desc = "Navigate to right window" })

      -- 3. Resize windows with arrows
      -- map("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
      -- map("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
      -- map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
      -- map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

      -- 4. Navigate buffers
      -- map("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
      -- map("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })

      -- 5. Move text up and down
      -- map('v', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
      -- map('v', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
      -- map('n', '<A-j>', ':m .+1<CR>==', { desc = 'Move line down' })
      -- map('n', '<A-k>', ':m .-2<CR>==', { desc = 'Move line up' })

      -- 6. Better indenting
      map('v', '<', '<gv', { desc = 'Indent left and reselect' })
      map('v', '>', '>gv', { desc = 'Indent right and reselect' })

      -- 7. Clear search highlighting
      map('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Clear search highlights' })

      -- 8. Save and quit shortcuts
      -- map('n', '<C-s>', ':w<CR>', { desc = 'Save file' })
      -- map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
      -- map('n', '<leader>Q', ':qa!<CR>', { desc = 'Force quit all' })

      -- 9. Split windows
      -- map('n', '<leader>sv', ':vsplit<CR>', { desc = 'Split vertically' })
      -- map('n', '<leader>sh', ':split<CR>', { desc = 'Split horizontally' })
      -- map('n', '<leader>sc', ':close<CR>', { desc = 'Close current split' })

      -- 10. Better paste (doesn't replace clipboard with deleted text)
      -- map('v', 'p', '"_dP', { desc = 'Paste without yanking' })

      -- 11. Stay in indent mode
      -- map('v', '<', '<gv', { desc = 'Indent left' })
      -- map('v', '>', '>gv', { desc = 'Indent right' })

      -- 12. Terminal mode escape
      -- map('t', '<C-h>', '<C-\\><C-N><C-w>h', { desc = 'Terminal left window nav' })
      -- map('t', '<C-j>', '<C-\\><C-N><C-w>j', { desc = 'Terminal down window nav' })
      -- map('t', '<C-k>', '<C-\\><C-N><C-w>k', { desc = 'Terminal up window nav' })
      -- map('t', '<C-l>', '<C-\\><C-N><C-w>l', { desc = 'Terminal right window nav' })
    end,
  },
}
