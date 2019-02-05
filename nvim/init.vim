set relativenumber
set number
set scrolloff=10
set nowrap
set nostartofline
set guioptions=Pce
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
"match Error /\%121v.\+/
set autoindent
set nocindent
filetype plugin indent off
set list listchars=tab:→\ ,trail:·
set undofile
set autowriteall

"set wildmode=longest:full,full
set wildmode=longest,list,full

:map <Space> <leader>
:nnoremap <leader>h :bufdo %s/<C-R><C-W>//gec<Left><Left><Left><Left>
:nnoremap <leader>w :wa<CR>
:nnoremap <leader>m :make<CR>:cn<CR><CR>

colorscheme industry
"colorscheme default
"highlight Visual cterm=reverse ctermbg=NONE
