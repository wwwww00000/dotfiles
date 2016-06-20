set nocompatible
filetype off

"For unix filesystems
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$HOME/vimfiles/bundle/')

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-airline/vim-airline'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

Plugin 'LaTeX-Box-Team/LaTeX-Box'

Plugin 'pangloss/vim-javascript'

Plugin 'mxw/vim-jsx'

Plugin 'reedes/vim-pencil'

call vundle#end()
filetype plugin on

let mapleader = ' '
inoremap jk <Esc>

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
autocmd Filetype html setlocal tabstop=2 softtabstop=2 expandtab shiftwidth=2

set foldmethod=indent 
set foldlevelstart=20
nmap <Leader>fm :set foldmethod=manual<Cr> 

set relativenumber
set number
set incsearch
set hlsearch
nnoremap <silent><Cr> :noh<Cr>

"For vim7.3 and below
"function! NumberToggle()
	"if(&relativenumber==1)
		"set number
	"else
		"set relativenumber
	"endif
"endfunc
"nnoremap <Leader>rn :call NumberToggle()<Cr>

"vim-airline settings
let g:airline#extensions#tabline#enabled=1

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
