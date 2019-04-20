" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "
call plug#begin('~/.vim/plugged')
" ======== BASE ========= "

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sbdchd/neoformat'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'

" ============== UI.THEME ============ "

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" ======== CODE CHECKER, LINTER, AUTOCOMPLETE ======= "
"code checker
"Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
"code autocomplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"code snippets
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" ==== FILES AND SEARCH PLUGINS ====== "

"Plug 'kien/ctrlp.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'

" ======== LANGUAGE SUPPORTS ========= "

"======HTML CSS========"
Plug 'mattn/emmet-vim'

"========PYTHON========"
Plug 'zchee/deoplete-jedi'

"==========JS=========="
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim'

call plug#end()
