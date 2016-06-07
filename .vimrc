set nocompatible
filetype off

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'reedes/vim-pencil'

call vundle#end()
filetype plugin indent on
filetype plugin on

let mapleader = ' '
inoremap jk <Esc>

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
autocmd Filetype html setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2

set foldmethod=indent 
set foldlevelstart=20

set relativenumber
set number
set incsearch
set hlsearch
nnoremap <silent><Cr> :noh<Cr>

"nerdtree settings
nmap <Leader>nt :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

"LaTeX_Box settings
let g:LatexBox_quickfix=2
let g:LatexBox_viewer='SumatraPDF'
let g:LatexBox_latexmk_preview_continuously=1
let g:LatexBox_open_pats=[]
let g:LatexBox_close_pats=[]

"vim-pencil settings
nmap <Leader>pt :PencilToggle<CR>
let g:pencil#warpModeDefault='soft'
augroup pencil
	autocmd!
	autocmd Filetype markdown,mkd call pencil#init()
