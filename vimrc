set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'xolox/vim-misc'
Plugin 'vim-airline/vim-airline'
Plugin 'xolox/vim-notes'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

" leader
let mapleader = ','

" python mode stuff
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r' 
let g:pymode_virtualenv = 1
let g:pymode_lint = 0
let python_highlight_all=1

" airline stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

" syntax and colors
syntax on
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" nerdtree
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.__pycache__$']
map <C-n> :NERDTreeToggle<CR>

" maps
imap jk <Esc>

" python stuff
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

set encoding=utf-8

" line number
set nu

" status line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" CtrlP stuff
let g:ctrlp_map = '<c-p>'

" vim-notes
let g:notes_directories = ['~/notes']

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { "type": "style" }

" ycm stuff and debugging
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_warning_symbol = '.'
let g:ycm_error_symbol = '..'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_python_interpreter = '/usr/local/Cellar/python@2/2.7.14_1/bin/python2' 

" make backspace act normal
set backspace=indent,eol,start

" maps
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <space> za
nmap <S-Enter> o<Esc>

set splitbelow
set splitright

" useful abbreviations
iabbrev main if __name__ == '__main__':
