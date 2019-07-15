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
