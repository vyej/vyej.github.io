" 编码
set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030,latin1
set fileformat=unix
set fileformats=unix,dos
 
" 缩进与格式
filetype indent on
set autoindent
set smarttab
set cindent
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set backspace=eol,start,indent
 
" 搜索
set hlsearch
set incsearch
set ignorecase
set smartcase


local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 光标行
opt.cursorline = true

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪切板
opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
opt.splitright = true
opt.splitbelow = true

-- 搜索 区分大小写
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
