syntax on
set nocompatible
set hlsearch
set incsearch
set relativenumber
set number
set scrolloff=10
set nowrap
set nostartofline
set guioptions=Pce
set showcmd
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"match Error /\%121v.\+/
set autoindent
set list listchars=tab:→\ ,trail:·
autocmd BufEnter * :syntax sync fromstart

set undofile
set undodir=$HOME/.vim/undo

"set hidden
set autowriteall
set autoread

:map <Space> <leader>
:nnoremap <leader>h :bufdo %s/<C-R><C-W>//gec<Left><Left><Left><Left>
:nnoremap <leader>w :wa<CR>
:nnoremap <leader>m :make<CR>:cn<CR><CR>

colorscheme default

"call pathogen#infect()
let g:rainbow_active = 1

"colorscheme gruvbox
let g:gruvbox_contrast_light='hard'
"set background=light

set guifont=Monospace\ 11
