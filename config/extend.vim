" gui
if has("gui_running")
    set fu
    set lines=9999 columns=9999
    set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T       " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    set guioptions-=r       " 隐藏右侧滚动条
    set guioptions-=b       " 隐藏底部滚动条
    set showtabline=0       " 隐藏Tab栏
    set guioptions+=a
endif
set guifont=MesloLGS\ NF:h12
colorscheme gruvbox

" compile
map <f4> :call CompileCode()<cr>
map <f5> :call RunCode()<cr>

func! CompileCode()
    exec "w"
    if &filetype == "c"
        exec "!gcc -Wall -std=c99 %<.c -o %<"
    elseif &filetype == "cpp"
        exec "!g++ -Wall -std=c++98 %<.cpp -o %<"
    elseif &filetype == "java"
        exec "!javac %<.java"
    elseif &filetype == "haskell"
        exec "!ghc --make %<.hs -o %<"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    elseif &filetype == "fortran"
        exec "!gfortran -Wall -std=fortran %<.f90 -o %<"
    endif
endfunc

" 运行可执行文件
func! RunCode()
    exec "w"
    if &filetype == "c" || &filetype == "cpp" || &filetype == "haskell"
        exec "! %<.exe"
    elseif &filetype == "java"
        exec "!javac % && java %<"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    elseif &filetype == "javascript" || &filetype == "jsx" || &filetype == "javascript.jsx"
        exec "!node %"
    endif
endfunc


