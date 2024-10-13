set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set nocompatible
filetype off

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

Plug 'jeetsukumaran/vim-indentwise'

Plug 'morhetz/gruvbox'

Plug 'tpope/vim-abolish'

Plug 'tommcdo/vim-exchange'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'tpope/vim-fugitive'

Plug 'Vimjas/vim-python-pep8-indent'

Plug 'vim-python/python-syntax'

Plug 'jupyter-vim/jupyter-vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'embear/vim-localvimrc'

call plug#end()

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
    set number!
    set relativenumber!
endfunc
nnoremap <Leader>tn :call NumberToggle()<Cr>

nnoremap <Leader>tp :set invpaste<Cr>

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
" nnoremap <Leader>bb :b <C-d>

" fzf maps
nnoremap <Leader>bb :Buffers<Cr>
nnoremap <Leader>ff :Files<Cr>
nnoremap <Leader>fg :GFiles<Cr>
nnoremap <Leader>rg :Rg<Cr>
nnoremap <Leader>bl :Lines<Cr>
nnoremap <Leader>bt :BTags<Cr>

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
set laststatus=2

" vim-exchange maps
nmap gx <Plug>(Exchange)
xmap X <Plug>(Exchange)
nmap gxc <Plug>(ExchangeClear)
nmap gxx <Plug>(ExchangeLine)

" highlight trailing whitespace
set list
set listchars=trail:·

" gruvbox
colorscheme gruvbox
set background=dark

" python-syntax
let g:python_highlight_all=1

" jupyter-vim
let g:python3_host_prog = '/home/wenbin/.asdf/shims/python'
let g:jupyter_mapkeys=0
nnoremap <silent> <Leader>jC :JupyterConnect<Cr>
nnoremap <silent> <Leader>jd :JupyterDisconnect<Cr>
nnoremap <silent> <Leader>jf :JupyterRunFile<Cr>
nnoremap <silent> <Leader>jc :JupyterSendCell<Cr>
nnoremap <silent> <Leader>jj :JupyterSendRange<Cr>
nmap     <silent> <Leader>je <Plug>JupyterRunTextObj
vmap     <silent> <Leader>je <Plug>JupyterRunVisual

" vim-localvimrc
let g:localvimrc_persistent=2
let g:localvimrc_sandbox=0
