set number
set nocompatible
set ai
syntax on
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent
set encoding=utf-8
set t_Co=256
set laststatus=2
" set spell spelllang=en_us
let base16colorspace=256
set background=dark

" colorscheme base16-tomorrow

let g:Powerline_symbols = 'unicode'
let g:syntastic_puppet_checkers = ['puppetlint', 'puppet']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_puppet_puppetlint_args = '--no-80chars-check --no-documentation-check'

" You will need to follow some of the steps in vundle's quick start guide here
" " https://github.com/gmarik/vundle#quick-start to use this vimrc correctly.
filetype off
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'gnupg'
Bundle 'rodjek/vim-puppet'
Bundle 'Lokaltog/powerline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'chriskempson/base16-vim'


filetype plugin indent on

" Show trailing whitepace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/ containedin=ALL
autocmd BufWinLeave * call clearmatches()
