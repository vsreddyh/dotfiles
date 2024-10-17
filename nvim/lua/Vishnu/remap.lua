vim.g.mapleader=" "
vim.api.nvim_set_keymap('n', '<leader>d', ':edit! | Ex<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '(', '()<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '[', '[]<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '{', '{}<Left>', { noremap = true })
vim.api.nvim_set_keymap('i', '"', '""<Left>', { noremap = true })  -- No newlines for quotes
vim.api.nvim_set_keymap('i', "'", "''<Left>", { noremap = true })  -- No newlines for quotes
vim.api.nvim_set_keymap('v', '<C-S-c>', '"+y', { noremap = true, silent = true })
vim.keymap.set('v', '<Leader>c', '"+y', { noremap = true, silent = true })
