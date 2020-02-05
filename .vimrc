"1.1: Package managing - YouCompleteMe 
"lines 15, 21
"1.2: Appearance - Solarized
"Line 13, 29-31
"1.3: VimScripting - Syntastic
"Line 39

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
"1.1: Package managing: YouCompleteMe
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on
"1.1: Package managing: YouCompleteMe
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_filetype_blacklist = {
        \ 'tex' : 1,
        \ 'tagbar' : 1,
        \ 'qf' : 1,
        \ 'notes' : 1,
        \ 'markdown' : 1,
        \ 'unite' : 1,
        \ 'text' : 1,
        \ 'vimwiki' : 1,
        \ 'pandoc' : 1,
        \ 'infolog' : 1,
        \ 'mail' : 1
        \}
"autocmd FileType tex :AcpDisable

" let g:molokai_original = 1
" colorscheme molokai
"1.2: Solarized
" --- Solarized Theme ---
"let g:solarized_termcolors=256
"syntax enable
"set background=light   
"let g:solarized_contrast="high"
"colorscheme solarized
"highlight Normal ctermfg=white 

" --- Useful IDE Stuff ---
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
"Checks for syntax errors
"Plugin 'vim-syntastic/syntastic'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'Raimondi/delimitMate'
"Plugin 'vim-syntastic/syntastic'

" --- General settings ---
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=120
set clipboard=unnamed

hi clear SignColumn

syntax on

" --- NERDTree Tabs ---
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 0

" --- EasyTag Config ---
set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

nmap <silent> <leader>b :TagbarToggle<CR>

" --- delimitMate config ---
let delimitMate_expand_cr = 1
augroup mydelimitMate
	au!
	au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
	au FileType tex let b:delimitMate_quotes = ""
	au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
	au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" --- Map Window Pane Toggle ---
nmap ,, <c-w><c-w>
nmap <M-Right> gt
