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
Plug 'luochen1990/rainbow'
" Motion
Plug 'easymotion/vim-easymotion'
" Plug 'justinmk/vim-sneak'
" git plug
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
" airline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" tree tagbar
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
" Plug 'francoiscabrol/ranger.vim'
Plug 't9md/vim-choosewin'
" Plug 'majutsushi/tagbar'
" Plug 'lvht/tagbar-markdown'
Plug 'liuchengxu/vista.vim'

Plug 'ryanoasis/vim-devicons'
" snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" format comment 
Plug 'Chiel92/vim-autoformat'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
" Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter'
" complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" file search
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary'   }
Plug 'Yggdroot/LeaderF', { 'do': './install.sh'  }
" Plug 'mileszs/ack.vim'
Plug 'will133/vim-dirdiff'
" synax check
Plug 'w0rp/ale'
" multiple cursors
Plug 'terryma/vim-multiple-cursors'
" tmux
Plug 'christoomey/vim-tmux-navigator'
" vim themes
" Plug 'flazz/vim-colorschemes'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula'  }
" front end
Plug 'mattn/emmet-vim'
" Plug 'ap/vim-css-color'
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
" javascript
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'moll/vim-node'
Plug 'ternjs/tern_for_vim'

" python
" Plug 'python-mode/python-mode'
" rust
Plug 'rust-lang/rust.vim'
" go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" tex
Plug 'lervag/vimtex'
"
"" Initialize plugin system
call plug#end()
