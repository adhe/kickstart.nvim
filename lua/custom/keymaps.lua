local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Escape using JK
map('i', 'jk', '<ESC>', { desc = 'Escape insert mode with jk' })

-- Barbar.nvim
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)

return {}
