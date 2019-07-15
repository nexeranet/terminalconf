let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug
let g:vim_vue_plugin_load_full_syntax = 1

nnoremap <leader>v :syntax sync fromstart<CR>
