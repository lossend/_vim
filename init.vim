let g:_vim_root_dir=fnamemodify(expand("<sfile>"),":p:h")
lockvar g:_vim_root_dir

func s:source_config(path)
    exec "source ".g:_vim_root_dir.a:path
endfunc

func! s:source_dir(dir)
for file in split(globpath(a:dir, "*.vim"), '\n')
    execute('source '.file)
endfor
endfunc

call s:source_config("/config/basic.vim")
call s:source_config("/config/plugin_list.vim")
call s:source_config("/config/plugin_config.vim")
call s:source_config("/config/extend.vim")
call s:source_dir(g:_vim_root_dir."/config/plugins")

