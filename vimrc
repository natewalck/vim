set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My Plugins via github repos
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'klen/python-mode'
Plugin 'rodjek/vim-puppet'
Plugin 'tpope/vim-rails'
Plugin 'thoughtbot/vim-rspec'
Plugin 'vim-ruby/vim-ruby'

" vim-scripts repos
Plugin 'Colour-Sampler-Pack'
Plugin 'ScrollColors'

filetype plugin indent on

"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

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
    autocmd BufRead,BufNewFile *.plist set filetype=plist
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml nu ai sw=2 sts=2 ts=2 bs=2 columns=100 lines=70 smarttab omnifunc=rubycomplete#Complete
    autocmd FileType python set ts=4 sw=4 sts=4 tw=80 smartindent autoindent hlsearch incsearch showmatch omnifunc=pythoncomplete#Complete
    autocmd FileType plist set ts=4 sw=4 sts=4 tw=80 smartindent autoindent hlsearch incsearch showmatch
augroup END
