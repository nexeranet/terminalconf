" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'terryma/vim-multiple-cursors'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'jiangmiao/auto-pairs'

Plug 'mattn/emmet-vim'

Plug 'vim-syntastic/syntastic'

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

Plug 'pangloss/vim-javascript'

Plug 'posva/vim-vue'

Plug 'kien/ctrlp.vim'

Plug 'rking/ag.vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'ternjs/tern_for_vim'

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

"========PYTHON========

Plug 'zchee/deoplete-jedi'

call plug#end()
