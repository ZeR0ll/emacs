set number "显示行号
syntax on "开启语法高亮
"set termguicolors "true color
"在命令行下输入 printf "\x1b[38;2;255;100;0mTRUECOLOR\x1b[0m\n"
"如果显示为红色的TRUECOLOR，则说明shell支持24bit color
set nobackup "关闭备份
set noswapfile "关闭swapfile
set ruler "显示当前行列号
set cursorline "高亮当前行
set mouse=a "启用鼠标

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent

set autoindent
set smartindent

set colorcolumn=81
let python_highlight_all=1

let mapleader = ","

filetype plugin on

set clipboard+=unnamedplus
""""插件
call plug#begin()
Plug 'joshdick/onedark.vim' "onedark主题

Plug 'itchyny/lightline.vim' "状态行

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup=1 "代码补全
" use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'zchee/deoplete-jedi' "neoplete补全 for python
"装了这个就行了，别做死去pip装什么依赖，会报错
let g:deoplete#sources#jedi#python_path = '/home/zero/anaconda3/envs/neovim/bin/python'

Plug 'tweekmonster/deoplete-clang2' "neopete补全 for c/c++
"let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
"let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
" 需要安装clang
" pacman -S clang python-libclang

Plug 'scrooloose/nerdtree',{'on':'NERDTreeToggle'} "文件树,快捷键F3
map <F3> :NERDTreeToggle<CR>

Plug 'majutsushi/tagbar' " 类和标签查看，快捷键F4
nmap <F4> :TagbarToggle<CR> 

Plug 'jiangmiao/auto-pairs' "括号补全

Plug 'kien/ctrlp.vim' "快速打开文件

Plug 'Yggdroot/indentLine' "显示对其虚线

Plug 'scrooloose/nerdcommenter' "快速注释多行

Plug 'junegunn/vim-easy-align' "高级对齐
vmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

call plug#end()
colorscheme onedark "atom主题
