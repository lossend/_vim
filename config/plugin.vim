if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'mhinz/vim-startify'
" Motion
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
" git plug
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" tree tagbar
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
Plug 'majutsushi/tagbar'
Plug 'lvht/tagbar-markdown'
Plug 'ryanoasis/vim-devicons'
" snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" format comment 
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
" complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" file search
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'will133/vim-dirdiff'
" synax check
Plug 'w0rp/ale'
" multiple cursors
Plug 'terryma/vim-multiple-cursors'
" tmux
Plug 'christoomey/vim-tmux-navigator'
" vim themes
Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
" front end
Plug 'mattn/emmet-vim'
" javascript
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'moll/vim-node'

" python
Plug 'python-mode/python-mode'
" tex
Plug 'lervag/vimtex'
Plug 'junegunn/goyo.vim'
"" Initialize plugin system
call plug#end()


