set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'


" My Bundles here:
"
" original repos on github
" Snippet - ctrlp or snipmate

" Snippets - ctrlp or snipmate
Bundle 'kien/ctrlp.vim'

let s:python_ver = 0
silent! python import sys, vim;
\ vim.command("let s:python_ver="+"".join(map(str,sys.version_info[0:3])))

" Python plugin bundles
if (has('python') || has('python3')) && s:python_ver >= 260
  Bundle 'SirVer/ultisnips'
else
  Bundle 'garbas/vim-snipmate'
endif

Bundle 'croaker/mustang-vim'
Bundle 'altercation/vim-colors-solarized'

Bundle 'scrooloose/nerdtree'
Bundle 'corntrace/bufexplorer'
Bundle 'simplyzhao/cscope_maps.vim'
Bundle 'tmhedberg/matchit'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-surround'

Bundle 'joonty/vdebug.git'
Bundle 'bling/vim-airline'


" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'SearchComplete'
Bundle 'TaskList.vim'


" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!



"""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
"""""""""""""""""""""""""""""""""""""""""""""""

"set nocompatible
 
syntax on
colorscheme solarized
set background=dark

set gfn=Monaco:h12

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set autoindent
 
set hlsearch
set incsearch
set showmatch
 
set number

"filetype on
"filetype plugin on

set nocscopeverbose


nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>


"""""""""""""""""""""""""""""""""""""""""""""""
" => backup and swap files
"""""""""""""""""""""""""""""""""""""""""""""""
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp

"""""""""""""""""""""""""""""""""""""""""""""""
" => search highlight cleaner
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <esc> :noh<cr><esc>

"""""""""""""""""""""""""""""""""""""""""""""""
" => leader configuration
"""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
noremap <Leader>W :w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""
" => ctags plugin maps
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F8> :!/opt/local/bin/ctags -R --python-kinds=-i *.py<CR>
nnoremap <F4> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" => Omni Complete
"""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType python set omnifunc=pythoncomplete#Complete
inoremap <C-space> <C-x><C-o>

"""""""""""""""""""""""""""""""""""""""""""""""
" => PyFlakes
"""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""
" => Fuzzy Finder
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-f><C-f> :FufFile<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <F3> :NERDTreeToggle<CR>
"Q. How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""
" => spliting buffers / windows / frames ...
"""""""""""""""""""""""""""""""""""""""""""""""
" window
nmap <Leader>swh  :topleft  vnew<CR>
nmap <Leader>swl  :botright vnew<CR>
nmap <Leader>swk  :topleft  new<CR>
nmap <Leader>swj  :botright new<CR>
" buffer
nmap <Leader>sh  :leftabove  vnew<CR>
nmap <Leader>sl  :rightbelow vnew<CR>
nmap <Leader>sk  :leftabove  new<CR>
nmap <Leader>sj  :rightbelow new<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" => Vdebug
"""""""""""""""""""""""""""""""""""""""""""""""
let g:vdebug_options = {
\ 'path_maps': {"/Users/Artur/Sites/sispp": "/Users/Artur/Sites/sispp"},
\ 'server': '0.0.0.0'
\}

