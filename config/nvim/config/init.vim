let s:asdf_dir = expand('~/.asdf/installs/python/')

let g:python3_host_prog = s:asdf_dir . '3.7.3/bin/python'

call plug#begin('~/.local/share/nvim/plugged')

" Util
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'godlygeek/tabular'
Plug 'neomake/neomake'
Plug 'tmux-plugins/vim-tmux'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'mbbill/undotree'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-obsession'
Plug 'ervandew/supertab'
"Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'nathanaelkane/vim-indent-guides' " `,ig` to toggle

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }

" Haskell
Plug 'eagletmt/neco-ghc', { 'do': ':UpdateRemotePlugins' }
Plug 'nbouscal/vim-stylish-haskell'
Plug 'parsonsmatt/intero-neovim'
Plug 'pbrisbin/vim-syntax-shakespeare'

" JavaScript
Plug 'carlitux/deoplete-ternjs'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'gorodinskiy/vim-coloresque'

" Ruby
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'

" TypeScript
Plug 'leafgarland/typescript-vim'

" Python
Plug 'nvie/vim-flake8'
Plug 'jmcantrell/vim-virtualenv'

call plug#end()
