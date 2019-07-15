" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "
call plug#begin('~/.vim/plugged')


" ======== WIKI ========= "

Plug 'vimwiki/vimwiki'

" ======== BASE ========= "

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-surround'

Plug 'scrooloose/nerdcommenter'
Plug 'ntpeters/vim-better-whitespace'

"Plug 'sbdchd/neoformat'
"Plug 'terryma/vim-multiple-cursors'
"
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
" hightlited yank text
Plug 'machakann/vim-highlightedyank'

Plug 'machakann/vim-highlightedyank'
" ============== UI.THEME ============ "

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ayu-theme/ayu-vim'

" ======== CODE CHECKER, LINTER, AUTOCOMPLETE ======= "

"====CODE CHECKER

Plug 'w0rp/ale'

"====CODE AUTOCOMPLETE

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

"====CODE SNIPPETS
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'
"
" Track the engine.<current snitppets>
"Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plug 'honza/vim-snippets'

" ==== FILES AND SEARCH PLUGINS ====== "

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'

" ======== LANGUAGE SUPPORTS ========= "

"========MARKDOWN========"

"Plug 'godlygeek/tabular'
"Plug 'plasticboy/vim-markdown'

"========LATEX========"
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

"======HTML CSS========"
Plug 'mattn/emmet-vim'

"========PYTHON========"
Plug 'zchee/deoplete-jedi'

"==========JS=========="
Plug 'pangloss/vim-javascript'

Plug 'posva/vim-vue'

Plug 'leafOfTree/vim-vue-plugin'

Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }

Plug 'carlitux/deoplete-ternjs'

call plug#end()
