source ~/.config/nvim/plugins.vim

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start

let mapleader = ','
set autoread
set termguicolors
set number
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
set lazyredraw

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" yank to clipboad
if has("clipboard")
    set clipboard=unnamed  " copy to the system clipboard
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
""set nobackup
""set nowb
set noswapfile

" Linebreak on 500 characters
" buffers
set hidden
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

" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "

" ====== DEOPLETE ====== "
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1
"let g:neosnippet#enable_completed_snippet = 1
"call deoplete#enable()

inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#mappings#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}

" === NeoSnippet === "
" Map <C-k> as shortcut to activate snippet if available
""imap <C-k> <Plug>(neosnippet_expand_or_jump)
""smap <C-k> <Plug>(neosnippet_expand_or_jump)
""xmap <C-k> <Plug>(neosnippet_expand_target)

" Load custom snippets from snippets folder
""let g:neosnippet#snippets_directory='~/.config/nvim/snippets'

" Hide conceal markers
"let g:neosnippet#enable_conceal_markers = 0
" Enable snipMate compatibility feature.
"let g:neosnippet#enable_snipmate_compatibility = 1

" For conceal markers.
"
"if has('conceal')
  "set conceallevel=2 concealcursor=niv
"endif

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"smap <expr><TAB> neosnippet#expandable_or_jumpable() ? \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" === NERDTree === "

let g:NERDTreeDirArrows=0
let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
let g:NERDTreeShowHidden = 1

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
" === Nerdtree shorcuts === "
nmap <leader>n :NERDTreeToggle<CR>
map <C-n> : NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
""let g:user_emmet_expandabbr_key='<Tab>'
""imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" =========== SNIPPETS ========= "
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsSnippetsDir=$HOME."/.config/nvim/snippets"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/snippets']
let g:UltiSnipsEnableSnipMate = 0
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ===== CODE AUTO-FORMAT PLUGIN ====
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

" ==== A.L.E. ====== "
let g:ale_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {
\   'javascript': ['jshint'],
\}
nmap <leader>e :ALEDetail<CR>

" ====== FZF CONFIG ======== "

nnoremap <Leader>f :<C-u>Files<CR>
nnoremap <Leader>b :<C-u>Buffers<CR>
nnoremap <Leader>hi :<C-u>History<CR>
nnoremap <Leader>d :<C-u>Dirvish<CR>

"Ctrlp settings start

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'

"Ctrlp settings end
"
" ============================================================================ "
" ===                           THEME SETUP                               === "
" ============================================================================ "
set omnifunc=syntaxcomplete#Complete background=dark
set t_Co=256


try
  colorscheme gruvbox
catch
  colorscheme slate
endtry
" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" === Vim airline ==== "
let g:airline_theme='luna'
"Disable vim-airline in preview mode
let g:airline_exclude_preview = 1
" Enable powerline fonts
let g:airline_powerline_fonts = 1
" unicode symbols
let g:airline_left_sep = '❮'
let g:airline_right_sep = '❯'


function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

noremap <leader>t :call NumberToggle()<cr>


" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "
 
" Delete current visual selection and dump in black hole buffer before pasting
" Used when you want to paste over something without it getting copied to
" Vim's default buffer
vnoremap <leader>p "_dP

" === Search shorcuts === "
"   <leader>h - Find and replace
"   <leader>/ - Claer highlighted search terms while preserving history
map <leader>h :%s///<left><left>
nmap <silent> <leader>/ :nohlsearch<CR>
