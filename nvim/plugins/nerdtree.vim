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
