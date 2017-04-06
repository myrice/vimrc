set nocompatible              " be iMproved
filetype off                  " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree.git'
Plugin 'jistr/vim-nerdtree-tabs.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
 


syntax enable
syntax on

let mapleader=","
"go相关的配置
let g:fencview_autodetect=1
let g:go_disable_autoinstall = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:godef_split=3
"全局设置

set nu
"相对行号
set relativenumber
set wildmenu
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set hlsearch
"set mouse=a
set cuc cul  "这个就是十字架
set incsearch
set autoindent
set smartindent
set showmatch
set ruler
set wrap
set expandtab
set ts=4
set softtabstop=4
set shiftwidth=4
setlocal noswapfile 
set bufhidden=hide 
set gcr=a:block-blinkon0 "禁止光标闪烁
set guioptions-=l "禁止显示滚动条
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m "禁止工具栏`
set guioptions-=T 
set backspace=indent,eol,start
"set foldmethod=indent  " 按缩进来折叠
set foldmethod=syntax " 按{}来折叠
set foldlevel=100
"按空格折叠打开和关闭
nnoremap <space> za

"颜色方案 
"https://github.com/tomasr/molokai/
"文件放到~/.vim/colors/molokai.vim
colorscheme  molokai
"colorscheme koehler
set t_Co=256  
let g:molokai_original = 1
let g:rehash256 = 1

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>
inoremap <c-e> <right>
inoremap <c-w> <left>

" 跳转至右方的窗口"
nnoremap <Leader>l <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>h <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>k <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>j <C-W>j

"设置行号的快捷键
nmap <Leader>nrn :set norelativenumber<CR>
nmap <Leader>rn :set relativenumber<CR>
nmap <Leader>nan :set nonumber<CR>
nmap <Leader>an :set number<CR>

"设置检索时大小写
nmap <Leader>ic :set ic<CR>
nmap <Leader>nic :set noic<CR>

"切换paste模式
nmap <Leader>p :set paste<CR>
nmap <Leader>np :set nopaste<CR>

nmap <Leader>q :q!<CR>
nmap <Leader>w :w!<CR>
nmap <Leader>wq :wq!<CR>
imap <leader>jj <ESC>
map <C-n> :NERDTreeToggle<CR>

" NERDTree箭头
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '开'

"inoremap <C-h> <Left>
"inoremap <C-j> <Down>
"inoremap <C-k> <Up>
"inoremap <C-l> <Right>

