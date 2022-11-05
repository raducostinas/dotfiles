" HTML, JSX
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'

" Lightlane
let g:lightline = {
      \ 'active': {
      \   'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
      \   'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
      \ },
      \ 'inactive': {
      \   'left': [['inactive'], ['relativepath']],
      \   'right': [['bufnum']]
      \ },
      \ 'component': {
      \   'bufnum': '%n',
      \   'inactive': 'inactive'
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'kitestatus': 'kite#statusline'
      \ },
      \ 'colorscheme': 'gruvbox',
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
      \}

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=1

" Editor Config
let g:EditorConfig_indent_style = 'space'
let g:EditorConfig_indent_size = 2
let g:EditorConfig_insert_final_newline = 1
let g:EditorConfig_trim_trailing_whitespace = 1
let g:EditorConfig_max_line_length = 120

au FileType gitcommit let b:EditorConfig_disable = 1
au FileType *.md let b:EditorConfig_max_line_length = 'off'
au FileType *.md let b:EditorConfig_trim_trailing_whitespace = 0
