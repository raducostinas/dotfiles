let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set termguicolors
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set splitbelow
set splitright
set hidden

so /Users/raducostinas/.dotfiles/editors/vim/plugins.vim

set bg=dark
let g:gruvbox_bold=1
let g:gruvbox_italic=1
let g:gruvbox_termcolors = 256
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
highlight Normal ctermbg=NONE

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
