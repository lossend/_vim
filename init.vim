let g:_vim_root_dir=fnamemodify(expand("<sfile>"),":p:h")
let g:_vim_config_dir=g:_vim_root_dir.'/config/'
let g:_vim_tmp_dir=g:_vim_root_dir.'/tmp_dirs/'
lockvar g:_vim_root_dir
lockvar g:_vim_config_dir
lockvar g:_vim_tmp_dir

func s:source_config(path)
    exec "source ".g:_vim_config_dir.'/'.a:path
endfunc

func! s:source_dir(dir)
for file in split(globpath(a:dir, "*.vim"), '\n')
    execute('source '.file)
endfor
endfunc

call s:source_config("basic.vim")
call s:source_config("plugin.vim")
call s:source_config("plugin_config.vim")
call s:source_config("extend.vim")
call s:source_dir(g:_vim_root_dir."/config/plugins")

