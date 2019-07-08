source ~/.config/nvim/plugins.vim

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "

filetype plugin on
filetype plugin indent on
filetype indent plugin on
set omnifunc=syntaxcomplete#Complete background=dark
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
set nocompatible
"new rules for python
set ruler
set ignorecase
"set lazyredraw
"set delay 
set timeoutlen=550
"don't fold open files
set foldlevel=99

set redrawtime=10000
set re=1
syntax sync fromstart

let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug
let g:vim_vue_plugin_load_full_syntax = 1

nnoremap <leader>v :syntax sync fromstart<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" diabled  F1 help tab
"inoremap <F1> <Esc>

inoremap <F1> <Esc>
noremap <F1> <Esc>

" yank to clipboad
if has("clipboard")
    set clipboard=unnamed  " copy to the system clipboard
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => English and Russian layouts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
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
set nrformats= "Only decimal with counter


" ============================================================================ "
" ===                           PLUGIN SETUP                               === "
" ============================================================================ "

" ====== VIMWIKI ====== "

let g:vimwiki_list = [{'path': '~/.config/nvim/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}] 

" ====== DEOPLETE ====== "
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_refresh_always = 1

let g:deoplete#enable_ignore_case = 1
let g:deoplete#enable_smart_case = 1
let g:deoplete#enable_camel_case = 1
let g:deoplete#max_abbr_width = 0
let g:deoplete#max_menu_width = 0
let g:deoplete#omni#input_patterns = get(g:,'deoplete#omni#input_patterns',{})

set completeopt-=preview

"deoplete dev js config 
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]

"Add extra filetypes
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]


inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#mappings#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}


" === NERDTree === "

let g:NERDTreeDirArrows=0
let NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
let g:NERDTreeShowHidden = 1

" Hide certain files and directories from NERDTree
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']

"  <leader>n - Toggle NERDTree on/off
" === Nerdtree shorcuts === "
"nmap <leader>n :NERDTreeToggle<CR>
noremap <C-n> : NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg)
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:bg .' guifg='. a:fg
endfunction

call NERDTreeHighlightFile('py', 'cyan', 'none')

call NERDTreeHighlightFile('jade', 'green', 'none')
call NERDTreeHighlightFile('html', 'black', 'yellow')
call NERDTreeHighlightFile('styl', 'yellow', 'none')
call NERDTreeHighlightFile('css', 'yellow', 'none')
call NERDTreeHighlightFile('sass', 'magenta', 'none')

call NERDTreeHighlightFile('coffee', 'yellow', 'none')
call NERDTreeHighlightFile('js', 'yellow', 'none')
call NERDTreeHighlightFile('vue', 'white', 'green')
call NERDTreeHighlightFile('json', 'cyan', 'none')


call NERDTreeHighlightFile('php', 'magenta', 'none')

call NERDTreeHighlightFile('sh', 'red', 'none')
call NERDTreeHighlightFile('md', 'blue', 'none')
call NERDTreeHighlightFile('ds_store', 'Gray', 'none')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none')
call NERDTreeHighlightFile('txt', 'Gray', 'none')
" === EMMET === "
let g:user_emmet_expandabbr_key='<leader-t>'
imap <expr> <leader>t emmet#expandAbbrIntelligent("\<tab>")

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
let g:ale_lint_delay = 400
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {
\   'javascript': ['jslint'],
\}
nmap <leader>e :ALEDetail<CR>

" ====== FZF CONFIG ======== "

nnoremap <Leader>f :<C-u>Files<CR>
nnoremap <Leader>b :<C-u>Buffers<CR>
nnoremap <Leader>hi :<C-u>History<CR>
nnoremap <Leader>d :<C-u>Dirvish<CR>

" ====== LATEX CONFIG ======== "

let g:vimtex_enabled=1
let g:tex_flavor = "latex"
let g:livepreview_previewer = 'open -a Preview'

autocmd Filetype tex setl updatetime=100
"autocmd Filetype tex setl updatetime=100
nmap <leader>tt :LLPStartPreview<CR>


" =========================================================================== "
" ===                           THEME SETUP                               === "
" =========================================================================== "
 
set t_Co=256
set foldlevel=99

" theme list 
" # gruvbox
" # dracula
" # ayu  - let ayucolor="dark" 
"        - set termguicolors

"set termguicolors
"let ayucolor="mirage" 

try
  colorscheme dracula
catch
  colorscheme slate
endtry

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

set noshowcmd

"""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" === Vim airline ==== "
" theme - murmur, luna, violet  
let g:airline_theme='murmur' 
"Disable vim-airline in preview mode (luna)
"let g:airline_exclude_preview = 1: 
" Enable powerline fonts
let g:airline_powerline_fonts = 1
" unicode symbols
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'


" remove the filetype part
"let g:airline_section_z=''
" remove separators for empty sections
let g:airline_skip_empty_sections = 1
let g:airline#extensions#whitespace#enabled = 0

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

noremap <leader>n :call NumberToggle()<cr>

" IndentLine 

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
noremap <leader>i :IndentLinesToggle<CR>

"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
"let g:indentLine_setConceal = 0

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
