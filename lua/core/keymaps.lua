local vim = vim

--- Write out, Quit, Close
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>', {desc = 'Quit'})
vim.keymap.set('n', '<leader>Q', '<cmd>wall | :qa<cr>', {desc = 'Write All & Quit'})
vim.keymap.set('n', '<leader>x', '<cmd>close<cr>', {desc = 'Close'})

--- Buffer Delete and wipeot
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', {desc = 'Delete Current Buffer'})
vim.keymap.set('n', '<leader>bW', '<cmd>bwipeout!<cr>', {desc = 'Buffer WipeOut without saving'})

--- Navigation of Windows
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = false })

--- Quick Esc
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', 'kj', '<Esc>', { noremap = true, silent = false })

--- Window Resizing
vim.api.nvim_set_keymap('n', '<S-Up>', '<cmd>resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Down>', '<cmd>resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Left>', '<cmd>vertical resize +2<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Right>', '<cmd>vertical resize -2<CR>', { silent = true })
-- Alternatively:
vim.api.nvim_set_keymap('n', '<C-A-K>', '<cmd>resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-J>', '<cmd>resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-L>', '<cmd>vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-A-H>', '<cmd>vertical resize -2<CR>', { noremap = true, silent = true })

--- Move selected lines in visual mode
vim.api.nvim_set_keymap('v', "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- terminal mode action: revert to normal mode, i,e collapse the buffer
vim.api.nvim_set_keymap("t", "<A-x>", [[<C-\><C-n>]], { silent = true })

-- copy paste problems- @ThePrimagen
vim.api.nvim_set_keymap("x", "<leader>p", "\"_dP", { noremap = true, silent = true })

--- Tab manipulation
vim.keymap.set('n', '<leader>ta', '<cmd>tabnew<cr>', {desc = 'New Tab'})
vim.keymap.set('n', '<leader>td', '<cmd>tabclose<cr>', {desc = 'Close Tab'})

-- Delete text without modifying internal registers
vim.keymap.set({'n', 'x'}, 'x', '"_x')

-- SOurce vimrc
vim.keymap.set('n', ';x', ':source $MYVIMRC<CR>', {desc = "Source VIMRC", silent=true})
-- SOurce current file
vim.keymap.set('n', ';X', ':source<CR>', {desc = "Source Current File", silent=true})

-- Select all text in current buffer
-- vim.keymap.set('n', '<leader>a', ':normal! ggVG<cr>')

-- Toggle Format on save
vim.api.nvim_set_keymap('n', '<leader>F', ':lua toggleAutoformat()<CR>',
  { noremap = true, silent = true, desc = "Toggle Format on Save" })

-- Fold close
vim.api.nvim_set_keymap('n', ',f', ':%foldclose<CR>',
  { noremap = true, silent = true, desc = "Fold Close" })
