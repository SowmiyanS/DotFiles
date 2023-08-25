"############################################################
"#															#
"#	              AUTHOR   : SOWMIYAN						#
"#	              FILENAME : .VIMRC							#
"#															#
"############################################################

" Syntax must be set to ON before using the colorscheme.
syntax on
colorscheme slate


" Default setting for my vim.
set ts=4		" Tab Stop - to use 4 spaces for tabs
set ai			" Auto Indent - automatically match the indent when using 'o'

set nohlsearch  " no highlighted search [if not the highlights don't go]
set incsearch	" incremental search
set nu			" set line number
set rnu			" set relative line number


" Advanced settings

call plug#begin()

" Installs fzf command line and installs fzf.vim [fizzy finder for vim]
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
