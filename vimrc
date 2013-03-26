set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Let Vundle manage itself
Bundle 'gmarik/vundle'

" My Bundles via github repos
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'klen/python-mode'
" Snipmate Dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
" And Snipmate
Bundle 'godlygeek/tabular'
Bundle 'rodjek/vim-puppet'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'garbas/vim-snipmate'

" vim-scripts repos
Bundle 'Colour-Sampler-Pack'
Bundle 'ScrollColors'

filetype plugin indent on

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

colorscheme wombat256 
syntax on
set number
set expandtab
set completeopt=menu
if has('gui_running')
	set guifont=Inconsolata:h14
endif

augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml nu ai sw=2 sts=2 ts=2 bs=2 columns=100 lines=70 smarttab omnifunc=rubycomplete#Complete 
    autocmd FileType python set tabstop=4 shiftwidth=4 sts=4 tw=80 smartindent autoindent hlsearch incsearch showmatch omnifunc=pythoncomplete#Complete
    autocmd BufRead,BufNewFile *.plist set tabstop=4 shiftwidth=4 sts=4 tw=80 smartindent autoindent hlsearch incsearch showmatch setfiletype plist
augroup END
