"去掉vi的一致性"
set nocompatible
"显示行号"
set number
" 隐藏滚动条"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
syntax on   "开启语法高亮"
let g:solarized_termcolors=256  "solarized主题设置在终端下的设置"
set nowrap  "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set mouse=a     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set noexpandtab     "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出显示当前行"
set cursorcolumn        "突出显示当前列"

filetype on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin '你的插件'
call vundle#end()
filetype plugin indent on

Plugin 'L9'

Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>      "快捷键设置
let g:tagbar_ctags_bin='ctags'          "ctags程序的路径
let g:tagbar_width=30                   "窗口宽度的设置
map <F3> :Tagbar<CR>
"autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "如果是c语言的程序的话，tagbar自动开

Bundle 'a.vim'
Bundle 'c.vim'

Plugin 'Lokaltog/vim-powerline'
Plugin 'WolfgangMehner/vim-plugins'

"C/C++
let  g:C_UseTool_cmake    = 'yes' 
let  g:C_UseTool_doxygen = 'yes' 

"-----NERDTree-----
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeWinPos = "right"
nnoremap <silent> <Leader>t :NERDTreeToggle<CR> 
nnoremap <silent> <Leader>o :NERDTreeFind<CR>

"-----Powerline-----
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'compatible'
let g:Powerline_stl_path_style = 'filename'  "只显示文件名

