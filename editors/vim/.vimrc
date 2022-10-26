" Install vim-plug if not found
if empty(glob('~/.dotfiles/editors/vim/autoload/plug.vim'))
  silent !curl -fLo ~/.dotfiles/editors/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

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

so ~/.dotfiles/editors/vim/plugins.vim
so ~/.dotfiles/editors/vim/plugin-config.vim
so ~/.dotfiles/editors/vim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
highlight Normal ctermbg=NONE

au BufNewFile,BufRead *.html set filetype=htmldjango
lua require'colorizer'.setup()

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
