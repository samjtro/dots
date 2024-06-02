filetype plugin on
set number
set laststatus=2
set nocompatible
set wrap
set encoding=utf-8
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
syntax on
set encoding=utf-8
nnoremap p "0p
nnoremap S :%s//g<Left><Left>
nnoremap <silent> <C-t> :tabnew<CR>
autocmd BufWritePre * %s/\s\+$//e
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
colorscheme tokyonight
