" vim-easy-align config
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

let g:UltiSnipsExpandTrigger="<c-j>"

let g:polyglot_disabled = ['javascript', 'jsx']
if exists('&signcolumn')  " Vim 7.4.2201
    set signcolumn=yes
else
    let g:gitgutter_sign_column_always = 1
endif
" format
nnoremap <leader>af :Autoformat<CR>

let g:rainbow_active = 1
