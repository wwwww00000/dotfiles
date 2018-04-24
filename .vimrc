set nocompatible
filetype off

" For unix filesystems
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

Plugin 'jeetsukumaran/vim-indentwise'

Plugin 'morhetz/gruvbox'

Plugin 'tpope/vim-abolish'

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

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

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
let NERDSpaceDelims=1
nnoremap <Leader>;; :call NERDComment('n', 'toggle')<Cr>
vnoremap <Leader>; :call NERDComment('x', 'toggle')<Cr>

" vim-airline settings
let g:airline#extensions#tabline#enabled=1

" LaTeX_Box settings
let g:LatexBox_quickfix=2
let g:LatexBox_viewer='SumatraPDF'
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_open_pats=[]
let g:LatexBox_close_pats=[]

" vim-exchange maps
nmap gx <Plug>(Exchange)
xmap X <Plug>(Exchange)
nmap gxc <Plug>(ExchangeClear)
nmap gxx <Plug>(ExchangeLine)
