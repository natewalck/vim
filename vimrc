" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#runtime_append_all_bundles()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
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
    autocmd FileType ruby,eruby,yaml set nocompatible nu ai sw=2 sts=2 ts=2 bs=2 columns=100 lines=70 smarttab 
    autocmd FileType python set tabstop=8 shiftwidth=4 sts=4 tw=80 smartindent autoindent 
augroup END
