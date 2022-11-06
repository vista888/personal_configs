set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'davidhalter/jedi-vim'

"Supertab 
Plugin 'ervandew/supertab'

" NERDTree
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" inoremap jk <ESC>

let mapleader = "<Space>"

syntax enable
set encoding=utf-8

set backspace=indent,eol,start "more powerful backspacing

" turn on line numbers
set number

" set python filetype options
au Filetype python set
	\ tabstop=4
	\ softtabstop=4
	\ shiftwidth=4
	\ textwidth=79

" add yaml filetype options
au! BufNewFile, BufReadPost *.{yaml, yml} set
        \ filetype=yaml
        \ foldtype=indent
        \ autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


" set tabs to have 4 spaces
set ts=4

" expand tabs into spaces
set expandtab

" turn on column numbering
set ruler
" enable all Python syntac highlighting features
" let python_highlight_all=1

" control the depth of autoindent
"set shiftwidth=4

" text width for python pep8
" set textwidth=79

func! WordProcessor()
  " movement changes
  map j gj
  map k gk
  " formatting text
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  " spelling and thesaurus
  setlocal spell spelllang=en_us
  set thesaurus+=/home/test/.vim/thesaurus/mthesaur.txt
  " complete+=s makes autocompletion search the thesaurus
  set complete+=s
endfu
com! WP call WordProcessor()
