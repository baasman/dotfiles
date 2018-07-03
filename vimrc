filetype off                  " required
set exrc
set completeopt-=preview

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'maralla/completor.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'chrisbra/csv.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'mattn/emmet-vim'
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

let mapleader = ','

" completer
inoremap <expr> <Tab> pumvisible() ? "<C-N>" : "<C-R>=completor#do('complete')<CR>"
let g:completor_python_binary = '/usr/bin/python3'

"nerdtree
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeIgnore=['\.pyc$', '__pycache__']


" status line
set laststatus=2
set statusline=
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

"ale stuff
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

syntax on
syntax enable
colorscheme deus

" maps
imap jk <Esc>

vnoremap <C-k> "ky
"nnoremap <C-v> <C-w>j<C-w>"k
vnoremap <leader>k "ky <C-w>j<C-w>"k<CR><C-w>k
nnoremap <leader>b <C-w>j<C-c><Up><CR><C-w>k

" python stuff
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=99 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 

set encoding=utf-8

" line number
set nu

" CtrlP stuff
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|venv)$'

" netrw
let g:netrw_banner = 0
let g:netrw_preview = 1

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
iabbrev dbug import ipdb; ipdb.set_trace()

set updatetime=100
autocmd CursorHold * if (&filetype == 'netrw' && &number == 0) | set number | endif

cd $HOME
