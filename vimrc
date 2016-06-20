set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'syntastic'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'hdima/python-syntax'
Plugin 'vim-scripts/boxdraw'

call vundle#end()        
filetype plugin indent on

filetype indent plugin on
syntax on
set ignorecase
set smartcase
set backspace=indent,eol,start
set nostartofline
set autoindent
set ruler
set laststatus=2
set confirm
set number
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a

"c++11 compiler syntastic

"let g:syntastic_cpp_compiler = 'g++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:syntastic_python_python_exec = '/vol/apps/system/python/pyenv/shims/python'
let g:syntastic_python_checkers = ['pylint']
"#set makeprg

"Python syntax highlighter
let python_highlight_all = 1
let python_version_2 = 1

"Enter line without going into insert mode
nmap <S-ENTER> O<Esc>
nmap <C-ENTER> o<Esc>
