call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
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

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:neosnippet#enable_completed_snippet = 1
"call deoplete#enable()
"inoremap <expr> <C-x> pumvisible() ? "\<C-n>" : "\<C-j>"
"inoremap <expr> <C-p> pumvisible() ? "\<C-p>" : "\<C-k>"

filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start

set autoread
set termguicolors
set relativenumber
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set cindent
set expandtab
set hlsearch
set incsearch
set splitbelow
set splitright
set ma
set cursorline
"new rules for python

set ruler
set ignorecase

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
""set nobackup
""set nowb
set noswapfile

" Linebreak on 500 characters

set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set nowrap "Wrap lines
set textwidth=0
set wrapmargin=0
set colorcolumn=150
""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

""mapping keys

let g:NERDTreeDirArrows=0
let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'

"NERDTree
"
map <C-n> : NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"lets 
let mapleader = ','
"Imapping
"
""let g:user_emmet_expandabbr_key='<Tab>'
""imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"setfiletype plugin on
set omnifunc=syntaxcomplete#Complete background=dark
let g:airline_theme='luna'
set t_Co=256
colorscheme gruvbox
" yank to clipboad
if has("clipboard")
    set clipboard=unnamed  " copy to the system clipboard
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

noremap <leader>t :call NumberToggle()<cr>

"Ctrlp settings start

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:NERDTreeDirArrowExpandable = '>'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'

"Ctrlp settings end
"
"syntastic settings

let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_aggregate_errors=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_ballons=has('ballon_eval')
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=3
let g:syntastic_ignore_files = ['^/usr/', '*node_modules*', '*vendor*', '*build*', '*LOCAL*', '*BASE', '*REMOTE*']
let g:syntastic_mode_map = { 'mode': 'active' }
let g:syntastic_javascript_checkers=['jshint', 'jscs','eslint']
"let g:syntastic_javascript_checkers=['eslint','jscs']
let g:syntastic_json_checkers=['jsonlint', 'jsonval']
let g:syntastic_ruby_checkers=['rubocop','mri']
let g:syntastic_perl_checkers=['perl','perlcritic','podchecker']
let g:syntastic_python_checkers=['pylint','pep8','python']
let g:syntastic_cpp_checkers=['gcc','cppcheck','cpplint','ycm','clang_tidy','clang_check']
let g:syntastic_c_checkers=['gcc','make','cppcheck','clang_tidy','clang_check']
let g:syntastic_haml_checkers=['haml_lint', 'haml']
let g:syntastic_html_checkers=['jshint']
let g:syntastic_yaml_checkers=['jsyaml']
let g:syntastic_sh_checkers=['sh','shellcheck','checkbashisms']
let g:syntastic_vim_checkers=['vimlint']
let g:syntastic_enable_perl_checker=1
let g:syntastic_c_clang_tidy_sort=1
let g:syntastic_c_clang_check_sort=1
let g:syntastic_c_remove_include_errors=1
let g:syntastic_quiet_messages = { "level": "[]", "file": ['*_LOCAL_*', '*_BASE_*', '*_REMOTE_*']  }
let g:syntastic_stl_format = '[%E{E: %fe #%e}%B{, }%W{W: %fw #%w}]'
