set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'angular-vim-snippets'
Plugin 'bootstrap-snippets'
Plugin 'nerdtree'
Plugin 'tagbar'
Plugin 'ultisnips'
Plugin 'vim-go'
Plugin 'vim-snippets'
Plugin 'YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-expand-region'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/gundo.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'c.vim'
Plugin 'OmniCppComplete'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" === My config Start ===

syntax on
colorscheme solarized
set ignorecase
set smartcase
set ruler
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set incsearch
set hlsearch
set backspace=start,indent,eol
set laststatus=2
set encoding=utf-8
set cursorline
set cursorcolumn
set wildmenu
set foldmethod=syntax
set nofoldenable
set scrolloff=5

let mapleader=";"

nnoremap <Space> :nohls<CR>
inoremap <C-d> <Del>
nnoremap J jzz
nnoremap K kzz

" === My config End ===


" vim-go

au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gi <Plug>(go-install)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

let g:go_play_open_browser = 1
let g:go_auto_type_info = 0


" NERD Tree

map <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowLineNumbers = 1


" Tagbar

nmap <Leader>m :TagbarToggle<CR>
let g:tagbar_show_linenumbers = -1
let g:tagbar_autofocus = 1


" Airline

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme="tomorrow"


" EasyMotion

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let g:EasyMotion_smartcase = 1


" javascript-libraries-syntax

let g:used_javascript_libs = 'jquery,angularjs,angularui'


" indent-guides

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1


" YouCompeleteMe

let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_key_invoke_completion = '<C-l>'
let g:ycm_confirm_extra_conf = 0
let g:ycm_min_num_of_chars_for_completion = 1
au FileType c,cpp,objc,objcpp,python,cs nnoremap gd :YcmCompleter GoTo<CR>


" Ultisnips

let g:UltiSnipsExpandTrigger = "<Leader>;"
let g:UltiSnipsEditSplit = "vertical"
