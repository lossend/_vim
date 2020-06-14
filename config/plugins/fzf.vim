" fzf.vim
let g:fzf_history_dir = '~/.local/share/fzf-history'

nnoremap <Leader>sr :Rg<Space>
nnoremap <Leader>sw :Rg <c-r><c-w><cr>
nnoremap <Leader>sf :Files <space>
nnoremap <Leader>sg :GGrep <space>
nnoremap <Leader>sp :PRg <space>

command! -bang -nargs=* GGrep
            \ call fzf#vim#grep(
            \   'git grep --line-number -- '.shellescape(<q-args>), 0,
            \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
command! -bang -nargs=* PRg
            \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'dir': system('git -C '.expand('%:p:h').' rev-parse --show-toplevel 2> /dev/null')[:-2]}, <bang>0)
