--       " Vim syntax file
--       " Add checkboxes to *.md files
--       " source: https://gist.github.com/huytd/668fc018b019fbc49fa1c09101363397
vim.cmd([[:set conceallevel=2]])
-- vim.cmd([[syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[\s\]'hs=e-4 conceal cchar=]])
-- vim.cmd([[syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[X\]'hs=e-4 conceal cchar=]])
-- vim.cmd([[syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[-\]'hs=e-4 conceal cchar=☒]])
-- vim.cmd([[syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[\.\]'hs=e-4 conceal cchar=⊡]])
-- vim.cmd([[syntax match VimwikiListTodo '\v(\s+)?(-|\*)\s\[o\]'hs=e-4 conceal cchar=⬕]])
vim.cmd([[:call matchadd('Conceal', '\[x\]', 0,21,{'conceal': ''})]])
vim.cmd([[:call matchadd('Conceal', '\[\ \]',0,22, {'conceal': ''})]])
vim.cmd([[:call matchadd('Conceal', '\[-\]', 0,23,{'conceal': '☒'})]])
vim.cmd([[:call matchadd('Conceal', '\[\.\]',0,24, {'conceal': '⊡'})]])
vim.cmd([[:call matchadd('Conceal', '\[o\]', 0,25,{'conceal': '⬕'})]])
vim.cmd([[:hi def link markdownCheckbox Todo]])
vim.cmd([[:highlight Conceal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE]])
vim.cmd([[:setlocal cole=1]])
