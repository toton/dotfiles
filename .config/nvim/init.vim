set relativenumber
set number
set scrolloff=10
set sidescrolloff=10
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

set clipboard+=unnamedplus

"set wildmode=longest:full,full
set wildmode=longest,list,full

" Trying to get rid of netrw...
let loaded_netrwPlugin = 1
" ...or at least make its buffers killable:
let g:netrw_fastbrowse = 0

fun! DropTrailingWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

:map <Space> <leader>
:nnoremap <leader>h :bufdo %s/<C-R><C-W>//gec<Left><Left><Left><Left>
:nnoremap <leader>w :wa<CR>
:nnoremap <leader>m :make<CR><CR>
:nnoremap <leader>b :b<Space>
:nnoremap <leader>l :nohlsearch<CR>
:nnoremap <Leader>s :call DropTrailingWhitespace()<CR>

"How to make Esc travel safely across all the msys2/bash/mosh/tmux layers:
"First, to map CapsLock->F1 on the Windows side: c:\Programs\uncap.exe" 0x14:0x70
"Then let vim consume it this way:
map  <F1>   <Esc>
imap <F1>   <Esc>
cmap <F1>   <Esc>
map  <S-F1> <Esc>
imap <S-F1> <Esc>
cmap <S-F1> <Esc>

set termguicolors

colorscheme industry

"hi Search guibg=#9f8300
hi Search guibg=peru

"colorscheme default
"highlight Visual cterm=reverse ctermbg=NONE

"colorscheme shine
"hi Normal     guifg=#000000 guibg=#ffffff
"
"hi Comment      guifg=#6060c0 guibg=#ffffff gui=NONE
"hi Constant     guifg=#009800 guibg=#ffffff
"hi Number       guifg=#809800 guibg=#ffffff gui=NONE
"hi Special      guifg=#00a000 guibg=#e0e0e0
"hi Identifier   guifg=#008080 guibg=#ffffff
"hi LineNr       guifg=#808060 guibg=#ffffff gui=italic
"hi CursorLineNr guifg=#906060 guibg=#ffffff gui=bold
"hi Statement    guifg=#000000               gui=bold
