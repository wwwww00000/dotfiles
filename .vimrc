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

Plugin 'pangloss/vim-javascript'

Plugin 'reedes/vim-pencil'

Plugin 'jeetsukumaran/vim-indentwise'

Plugin 'morhetz/gruvbox'

Plugin 'tpope/vim-abolish'

call vundle#end()
filetype plugin on

let mapleader = ' '
inoremap jk <Esc>
inoremap Jk <Esc>
inoremap jK <Esc>
inoremap JK <Esc>

set autoindent
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
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
nnoremap <silent><Cr> :noh<Cr>

" search for visually highlighted text
vnoremap // y/<C-R>"<CR>


function! NumberToggle()
	set relativenumber!
endfunc
nnoremap <Leader>rn :call NumberToggle()<Cr>

" fast buffer switching
nnoremap <Leader>b :bp<Cr>
nnoremap <Leader>n :bn<Cr>
nnoremap <Leader>l :ls<Cr>

" nerdcommenter settings
let NERDSpaceDelims=1

" vim-airline settings
let g:airline#extensions#tabline#enabled=1

" LaTeX_Box settings
let g:LatexBox_quickfix=2
let g:LatexBox_viewer='SumatraPDF'
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_open_pats=[]
let g:LatexBox_close_pats=[]

" vim-pencil settings
nmap <Leader>pt :PencilToggle<CR>
let g:pencil#warpModeDefault='soft'
" augroup pencil
	" autocmd!
	" autocmd Filetype markdown,mkd call pencil#init()
