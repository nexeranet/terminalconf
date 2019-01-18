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
Plug 'dracula/vim'
call plug#end()

set background=dark
let g:airline_theme='luna'
set t_Co=256
colorscheme gruvbox
" yank to clipboad
if has("clipboard")
    set clipboard=unnamed  " copy to the system clipboard
    if has("unnamedplus") " x11 support
        set clipbord+=unnamedplus
    endif
endif

set backspace=indent,eol,start
set number
syntax on
set tabstop=4
set shiftwidth=4
set wrap
set ai
set cin
set expandtab
set hlsearch
set incsearch
set splitbelow
set splitright
set ma
"mapping keys
let g:NERDTreeDirArrows=0
let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
" Cmd + c, Cmd + v
"vnoremap <C-c> "+y
"map <C-v> "+p
map <C-n> : NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"lets 
let g:user_emmet_expandabbr_key='<Tab>'
let mapleader = ','
"Imapping
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
"Ctrlp settings

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
"syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1

let g:syntastic_check_on_wq = 0
