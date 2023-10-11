"############################################################
"#															#
"#	              AUTHOR   : SOWMIYAN						#
"#	              FILENAME : .VIMRC							#
"#															#
"############################################################

" Syntax must be set to ON before using the colorscheme.
syntax on
"colorscheme slate	" Dark theme that is nice in default theme
" colorscheme shine	" Light theme in default vim
filetype plugin indent on " It will load the plugin files and indent files that vim has by default


" Default setting for my vim.
set ts=4		" Tab Stop - to use 4 spaces for tabs
set sts=4 		" Soft Tab Stop
set sw=4 		" Shift width
set et 			" Expand tab so we can have spaces as well!
set ai			" Auto Indent - automatically match the indent when using 'o'
set si 			" So I am no longer smart indenting


set nohlsearch  " no highlighted search [if not the highlights don't go]
set incsearch	" incremental search
set nu			" set line number
set rnu			" set relative line number


" Advanced settings

call plug#begin()

" Installs fzf command line and installs fzf.vim [fizzy finder for vim]
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" UltiSnippets
" Plug 'SirVer/ultisnips'

" Papercolor-theme
Plug 'NLKNguyen/papercolor-theme'

" GruvBox
Plug 'morhetz/gruvbox'

" SpaceCamp
Plug 'jaredgorski/SpaceCamp'

" Onhalf
Plug 'sonph/onehalf', { 'rtp' : 'vim' }

" Emmet
Plug 'mattn/emmet-vim'

" coc nvim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Remap for fuzzy finder
" Leader Key
let mapleader = " "

" Files command
nnoremap <leader>f :Files<Cr>
" Git Files command
nnoremap <leader>g :GFiles<Cr>
" Use bottom 35% instead of a popup window
let g:fzf_layout = { 'down' : '40%' }

" PaperColor Theme config
set t_Co=256	" This is may or may not needed

"set background=light
"set background=dark
"colorscheme PaperColor

" GruvBox Theme config

"set background=light
"set background=dark
"colorscheme gruvbox

" Space Camp
colorscheme spacecamp_lite


" OneHalf
"colorscheme onehalflight
"colorscheme onehalfdark

" UltiSnippets code begins ##################################################

" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" UltiSnippets code ends ###################################################



" Emmet Code starts ############################################################

" Enable emmet only in normal mode
let g:user_emmet_mode='n'

" Enable emmet for all mode
"let g:user_emmet_mode='a'


" Enabling for just html/css files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Redefining the leader key from ctrl+y
let g:user_emmet_leader_key='.'


let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

" Emmet Code ends ##############################################################
