-- 'lervag/vimtex'
vim.cmd([[let g:tex_flavor='latex']])
-- vim.cmd([[let g:vimtex_quickfix_mode=0]])
vim.cmd([[filetype plugin indent on]])
vim.cmd([[syntax enable]])
vim.cmd([[]])

-- 'KeitaNakamura/tex-conceal.vim'
vim.cmd([[set conceallevel=1]])
vim.cmd([[let g:tex_conceal='abdmg']])
vim.cmd([[hi Conceal ctermbg=none]])

-- Common
vim.cmd([[setlocal spell]])
vim.cmd([[set spelllang=en_us]])
vim.cmd([[set colorcolumn=80]])
