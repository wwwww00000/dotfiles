set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

Plugin 'tommcdo/vim-exchange'

Plugin 'Vimjas/vim-python-pep8-indent'

call vundle#end()
filetype plugin on
filetype plugin indent on

let mapleader = ' '
inoremap jk <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>
inoremap JK <Esc>

set autoindent
set tabstop=4 softtabstop=0 expandtab shiftwidth=4
autocmd Filetype html setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown | setlocal spell

set foldmethod=indent
set foldlevelstart=20
nmap <Leader>fi :set foldmethod=indent<Cr>
nmap <Leader>fm :set foldmethod=manual<Cr>

" insert newline without entering insert mode
nnoremap <C-J> o<Esc>k
nnoremap <C-K> O<Esc>j

set backspace=indent,eol,start

let g:netrw_bufsettings="noma nomod nu nobl nowarp ro"
let g:netrw_liststyle=3

set relativenumber
set number
set incsearch
set hlsearch

" reset search with <Cr>
nnoremap <silent><Cr> :noh<Cr><Cr>

" search for visually highlighted text
vnoremap // y/<C-R>"<CR>

function! NumberToggle()
    set relativenumber!
endfunc
nnoremap <Leader>rn :call NumberToggle()<Cr>

" fast buffer switching
nnoremap <Leader>bp :bp<Cr>
nnoremap <Leader>bn :bn<Cr>
nnoremap <Leader>bd :bd<Cr>
" close buffer without killing window
nnoremap <Leader>bd :bp<bar>bd#<Cr>
nnoremap <Leader>bl :ls<Cr>
nnoremap <Leader>b1 :b1<Cr>
nnoremap <Leader>b2 :b2<Cr>
nnoremap <Leader>b3 :b3<Cr>
nnoremap <Leader>b4 :b4<Cr>
nnoremap <Leader>b5 :b5<Cr>
nnoremap <Leader>b6 :b6<Cr>
nnoremap <Leader>b7 :b7<Cr>
nnoremap <Leader>b8 :b8<Cr>
nnoremap <Leader>b9 :b9<Cr>
" switch buffers by name
nnoremap <Leader>bb :b <C-d>

" spacemacs window management
nnoremap <Leader>wh :wincmd h<Cr>
nnoremap <Leader>wj :wincmd j<Cr>
nnoremap <Leader>wk :wincmd k<Cr>
nnoremap <Leader>wl :wincmd l<Cr>
nnoremap <Leader>wd :wincmd q<Cr>
nnoremap <Leader>w= :wincmd =<Cr>
nnoremap <Leader>w/ :vsplit<Cr>
nnoremap <Leader>w- :split<Cr>

" nerdcommenter settings
nnoremap <Leader>;; :call NERDComment('n', 'toggle')<Cr>
vnoremap <Leader>; :call NERDComment('x', 'toggle')<Cr>

" neovim terminal mode
tnoremap <Leader>bp <C-\><C-N>:bp<Cr>
tnoremap <Leader>bn <C-\><C-N>:bn<Cr>
tnoremap <Leader>bd <C-\><C-N>:bd<Cr>
tnoremap <Leader>bd <C-\><C-N>:bp<bar>bd#<Cr>
tnoremap <Leader>bl <C-\><C-N>:ls<Cr>
tnoremap <Leader>b1 <C-\><C-N>:b1<Cr>
tnoremap <Leader>b2 <C-\><C-N>:b2<Cr>
tnoremap <Leader>b3 <C-\><C-N>:b3<Cr>
tnoremap <Leader>b4 <C-\><C-N>:b4<Cr>
tnoremap <Leader>b5 <C-\><C-N>:b5<Cr>
tnoremap <Leader>b6 <C-\><C-N>:b6<Cr>
tnoremap <Leader>b7 <C-\><C-N>:b7<Cr>
tnoremap <Leader>b8 <C-\><C-N>:b8<Cr>
tnoremap <Leader>b9 <C-\><C-N>:b9<Cr>
tnoremap <Leader>wh <C-\><C-N>:wincmd h<Cr>
tnoremap <Leader>wj <C-\><C-N>:wincmd j<Cr>
tnoremap <Leader>wk <C-\><C-N>:wincmd k<Cr>
tnoremap <Leader>wl <C-\><C-N>:wincmd l<Cr>
tnoremap <Leader>wd <C-\><C-N>:wincmd q<Cr>
tnoremap <Leader>w= <C-\><C-N>:wincmd =<Cr>
tnoremap <Leader>w/ <C-\><C-N>:vsplit<Cr>
tnoremap <Leader>w- <C-\><C-N>:split<Cr>

" fix weird bug with default colorscheme
autocmd VimEnter * :colorscheme default

" persists terminal buffer even when hidden
set hidden

" vim-exchange maps
nmap gx <Plug>(Exchange)
xmap X <Plug>(Exchange)
nmap gxc <Plug>(ExchangeClear)
nmap gxx <Plug>(ExchangeLine)
