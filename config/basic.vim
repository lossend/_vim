let mapleader = ' '

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! PlugVim execute 'e  '.g:_vim_config_dir.'/plugin.vim'<bar>
command! PlugBasic execute 'e  '.g:_vim_config_dir.'/base.vim'<bar>
command! PlugBasic execute 'e  '.g:_vim_config_dir.'/base.vim'<bar>


set gcr=a:blinkon0               "光标不闪动
set background=dark
"" => text, tab and indent"
set expandtab
set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4     " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai                      " 设置自动缩进

set wrap
set nu                      " 显示行号
set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set ignorecase
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
packadd! matchit
set clipboard=unnamed,autoselect
set so=7

" Turn on wild menu
set wildmenu
set wildignore=*.o,*~,*.pyc,*.class,*.swap
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set wildignore+=*/node_modules/**

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

set autoread
" au FocusGained,BufEnter * checktime
" open and jump to last position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   execute "normal! g`\"" |
    \ endif


" create directory if needed
let s:backup_dir=g:_vim_tmp_dir.'/backup/'
let s:swap_dir=g:_vim_tmp_dir.'/swap/'
let s:undo_dir=g:_vim_tmp_dir.'/undo/'
let s:info_dir=g:_vim_tmp_dir.'/info/'
if !isdirectory(g:_vim_tmp_dir) && exists('*mkdir')
  call mkdir(g:_vim_tmp_dir)
endif
if !isdirectory(s:backup_dir) && exists('*mkdir')
  call mkdir(s:backup_dir)
endif
if !isdirectory(s:swap_dir) && exists('*mkdir')
  call mkdir(s:swap_dir)
endif
if !isdirectory(s:undo_dir) && exists('*mkdir')
  call mkdir(s:undo_dir)
endif
if !isdirectory(s:info_dir) && exists('*mkdir')
  call mkdir(s:info_dir)
endif

" backup files
set backup
let &backupdir   =s:backup_dir
set backupext   =-vimbackup
set backupskip  =
" swap files
let &directory   =s:swap_dir
set updatecount =100
" undo files
set undofile
let &undodir     =s:undo_dir
" viminfo files
" exec "set viminfo     ='100,n".s:info_dir.'.viminfo'
let &viminfo     ="'100,n".s:info_dir.'viminfo'
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

set laststatus=2             " 开启状态栏信息

" 设置编码
set fenc=utf-8
let &termencoding=&encoding
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
" 解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
language messages en_US.utf-8
set langmenu=en_US.UTF-8
let $LANG ='en_US.UTF-8'
