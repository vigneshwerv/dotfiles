let mapleader = ","

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/bin/fzf

call vundle#begin()

Plugin 'nvie/vim-flake8'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'roman/golden-ratio'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

set foldmethod=marker
set linebreak

set number

syntax on
set mouse=a

filetype plugin indent on

set encoding=utf-8
set fileencodings=utf-8

set hidden
set confirm
set ruler
set autoindent
set smartindent
set cindent
set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set wildignore=*.pyc
set ignorecase
set smartcase
set hlsearch
set incsearch
set shiftround
set history=1000
set undolevels=1000
set noswapfile
set nobackup
set number
set linespace=3
set backspace=indent,eol,start

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" FZF find commands
nnoremap <leader>f :Files<Enter>
nnoremap <leader>b :Buffer<Enter>
imap <c-x><c-l> <plug>(fzf-complete-buffer-word)

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number
      \ --no-heading --fixed-strings --ignore-case --follow --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Split commands
nnoremap <leader>v :vsplit

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

let g:airline_theme='minimalist'

" Flake8
autocmd FileType python map <buffer> <leader>1 :call Flake8()<CR>
let g:flake8_show_quickfix=0
let g:flake8_show_in_gutter=1
" to use colors defined in the colorscheme
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg
