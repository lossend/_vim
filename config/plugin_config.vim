" vim-easy-align config
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" fzf.vim
nnoremap <Leader>r :Rg<Space>
nnoremap <Leader>w :Rg <c-r><c-w><cr>

let g:fzf_history_dir = '~/.local/share/fzf-history'
nnoremap <Leader>f :Files <space>

let g:UltiSnipsExpandTrigger="<c-j>"

let g:polyglot_disabled = ['javascript', 'jsx']
if exists('&signcolumn')  " Vim 7.4.2201
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always = 1
endif
" format
noremap <F3> :Autoformat<CR>


