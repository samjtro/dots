filetype plugin on
set number
set laststatus=2
set nocompatible
set wrap
set encoding=utf-8
set hlsearch
set incsearch
set clipboard=unnamedplus
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
syntax on
set encoding=utf-8
map <M-h> <C-w>h
map <M-j> <C-w>j
map <M-k> <C-w>k
map <M-l> <C-w>l
nnoremap S :%s//g<Left><Left>
nnoremap <silent> <C-t> :tabnew<CR>
autocmd BufWritePre * %s/\s\+$//e
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
nnoremap <silent><A-b> :set paste<CR>m`o<Esc>``:set nopaste<CR>
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
colorscheme tokyonight
