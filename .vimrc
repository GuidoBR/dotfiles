set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/vundle'

" The bundles you install will be listed here
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'msanders/snipmate.vim'
Plugin 'spf13/PIV'
Plugin "lepture/vim-jinja"
call vundle#end()

filetype plugin indent on

" Changing leader key (default is \)
let mapleader = ","

" The rest of your config follows here
augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Red
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
	augroup END

" Powerline setup
set guifont=Hack
set laststatus=2
set term=xterm-256color

" NERD Tree
map <F2> :NERDTreeToggle<CR>

" Python-mode
" Activate rope
" Keys:
" " K             Show python docs
" " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual,  operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0 

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Autofold code
let g:pymode_folding = 1 

" I prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab
" Be smart when using tabs ;)
set smarttab

" indent when moving to the next line while writing code
set autoindent
" lets vim make an educated guess based on the content of the previous line.
set smartindent

" show line numbers
set number

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line 
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" Melhorando a pesquisa (modo /)
set incsearch  " Highlight while searching
set hlsearch   " Highlight all matches after entering search pattern
set ignorecase " Case insensitive
set smartcase  " Overides ignorecase if pattern contains upcase

" Ignorar arquivos compilados, backups, etc.
set wildignore=*.o,*~,*.pyc

" Tratar linhas longas como se fossem duas linhas. Útil na hora de mover entre elas
map j gj
map k gk

" colorscheme solarized
set background=dark

"""""""""""""""""""
" Backups e arquivos temporários
"""""""""""""""""""
set nobackup
set nowb
set noswapfile


