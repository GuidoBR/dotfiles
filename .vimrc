set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'StanAngeloff/php.vim'
Plugin 'klen/python-mode'
" Plugin 'tpope/vim-rails'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Melhorando a pesquisa (modo /)
set incsearch  " Highlight while searching
set hlsearch   " Highlight all matches after entering search pattern
set ignorecase " Case insensitive
set smartcase  " Overides ignorecase if pattern contains upcase

" Linhas de contexto ao redor do cursor
set scrolloff=2

" Mostra na linha de status, a linha e coluna onde o cursor está localizado
set ruler

" Exibir o número relativo das linhas. Útil para ajudar na
" movimentação/deleção sem precisar ficar contando
set relativenumber

" Exibir o menu para autocompletar
set wildmenu

" Modo de autocompletar similar ao do bash
set wildmode=longest,list

" Ignorar arquivos compilados, backups, etc.
set wildignore=*.o,*~,*.pyc

" Aumentando a quantidade de comandos que o VIM se lembra
set history =500
" Tratar linhas longas como se fossem duas linhas. Útil na hora de mover entre elas
map j gj
map k gk

" tells vim to show you matching opening or closing brackets when you step on a bracket with your cursor.
set showmatch

"""""""""""""""""""
" Cores e Fontes
"""""""""""""""""""
colorscheme solarized
set background=dark

" Usar UTF-8 por padrão
set encoding=utf8

" Usar como padrão o tipo de arquivo Unix
set ffs=unix,dos,mac

"""""""""""""""""""
" Backups e arquivos temporários
"""""""""""""""""""
set nobackup
set nowb
set noswapfile

"""""""""""""""""""
" Identação 
"""""""""""""""""""
" Usar espaços ao invés de TABs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 TAB equivale a 4 espaços
set shiftwidth=4
set tabstop=4

" tells vim to use the previous line's indent level to set the indent level of the new lines.
set autoindent
" lets vim make an educated guess based on the content of the previous line.
set smartindent

" Força arquivos para encode ISO
" set fileencoding=iso-8859-1

" F5 checa a sintaxe do arquivo PHP salvo.
map <F5> :!php -l %<CR>
