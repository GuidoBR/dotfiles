" Melhorando a pesquisa (modo /)
set hlsearch
set incsearch
set ignorecase
set smartcase

" Linhas de contexto ao redor do cursor
set scrolloff=2

" Mostra na linha de status, a linha e coluna onde o cursor está localizado
set ruler

" Exibir o número das linhas
set number

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

"""""""""""""""""""
" Cores e Fontes
"""""""""""""""""""
colorscheme desert
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
