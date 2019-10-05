" Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" ==============
" General Plugin
" ==============

" Vim-Fugitive: Git Wrapper
Plugin 'tpope/vim-fugitive'
" Fuzzy file, buffer, mru, tag etc finder
Plugin 'ctrlpvim/ctrlp.vim'
" An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
Plugin 'dyng/ctrlsf.vim'
" Perform all your vim insert mode completions with Tab
Plugin 'ervandew/supertab'
" commentary.vim: comment stuff out
Plugin 'tpope/vim-commentary'
" surround.vim: quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'
" A light and configurable statusline/tabline
Plugin 'itchyny/lightline.vim'
" A Vim plugin which shows a git diff in the gutter
Plugin 'airblade/vim-gitgutter'
" Base16
" Plugin 'chriskempson/base16-vim'
" One Dark syntax theme
Plugin 'joshdick/onedark.vim'

" Delete buffer without closing split
Plugin 'qpkorr/vim-bufkill'
" Markdown for Vim: a complete environment to create
" Markdown files with a syntax highlight that doesn't suck!
" Plugin 'gabrielelana/vim-markdown'
" Auto close (X)HTML tags
Plugin 'alvan/vim-closetag'
Plugin 'godlygeek/tabular'

" ALE
Plugin 'w0rp/ale'

" ===============
" Language Plugin
" ===============

" Rust
Plugin 'rust-lang/rust.vim'
" Elixir
Plugin 'elixir-editors/vim-elixir'
" JavaScript
Plugin 'pangloss/vim-javascript'
" React
Plugin 'mxw/vim-jsx'
" Liquid
Plugin 'tpope/vim-liquid'
" Emmet
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ============
" Color Scheme
" ============

if has("termguicolors")
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  colorscheme onedark
  " colorscheme base16-eighties
  " let base16colorspace=256
endif

colorscheme onedark

" Ctrl + n to toggle netrw
map <C-n> :Lexplore<CR>
" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath


" =======
" General
" =======
syntax on
set number
set wildmenu
set ruler
set hid
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set foldcolumn=1
set noswapfile
set modelines=0
set nomodeline

" ==============
" Tab and Indent
" ==============
set expandtab "Use spaces instead of tabs
set smarttab "Be smart when using tabs
set autoindent "Auto Indent
set smartindent "Smart Indent
set wrap "Wrap line
set textwidth=79
set shiftwidth=2
set tabstop=2

" ===========
" Status Line
" ===========
set laststatus=2

" =====
" netrw
" =====

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25

" =====================
" Plugins Configuration
" =====================

" Ctrl P
let g:ctrlp_custom_ignore = {
      \ 'dir': 'tmp\|deps\|doc\|_site\|node_modules\|_build',
      \ 'file': 'DS_Store'
      \ }

" vim-jsx
let g:jsx_ext_required = 0
let g:xml_syntax_folding = 1

" emmet-vim
let g:user_emmet_leader_key='<C-Z>'

" One Dark
let g:onedark_termcolors=256

" Vim Mix Format
let g:mix_format_on_save = 1

" ale
let g:ale_linters = {
      \ 'ruby': ['standardrb'],
      \ 'elixir': ['mix_format', 'credo']
      \}
let g:ale_fixers = {
      \'ruby': ['standardrb'],
      \'elixir': ['mix_format']
      \}
let g:ale_fix_on_save = 1

" rust
let g:rustfmt_autosave = 1

" =======================
"    My Custom Setup
" =======================

set clipboard=unnamedplus
