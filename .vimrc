set nocompatible
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'git://git.wincent.com/command-t.git'
    Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    Plugin 'flazz/vim-colorschemes'
    Plugin 'tpope/vim-surround'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'

    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    " Optional:
    Plugin 'honza/vim-snippets'

call vundle#end()
filetype plugin indent on



let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='minimalist'
let python_highlight_all = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

syntax on
set number
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab 
set softtabstop=4
set autoindent
set mousehide
set termencoding=utf-8
set novisualbell
set t_vb=
set backspace=indent,eol,start whichwrap+=<,>,[,
set showtabline=1
set wrap
set linebreak
set nobackup
set noswapfile
set encoding=utf-8 
set fileencodings=utf8,cp1251
set visualbell t_vb=
set clipboard=unnamed
set ruler
set hidden
set hlsearch
set incsearch
set ic


nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
autocmd BufWritePre *.py normal m`:%s/\s\+$//e `
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
