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

set autoread
autocmd FocusGained * :checktime

"set wildmode=longest:full,full
set wildmode=longest,list,full

:map <Space> <leader>
:nnoremap <leader>h :bufdo %s/<C-R><C-W>//gec<Left><Left><Left><Left>
:nnoremap <leader>w :wa<CR>
:nnoremap <leader>m :make<CR>:cn<CR><CR>
:nnoremap <leader>b :b<Space>

"How to make Esc travel safely across all the msys2/bash/mosh/tmux layers:
"First, to map CapsLock->F1 on the Windows side: c:\Programs\uncap.exe" 0x14:0x70
"Then let vim consume it this way:
map <F1> <Esc>
imap <F1> <Esc>

set termguicolors

colorscheme industry
"colorscheme default
"highlight Visual cterm=reverse ctermbg=NONE
