" BASIC
"""""""""""""""
        execute pathogen#infect()
        syntax on
        filetype plugin indent on
        syntax enable              " enable syntax processing
        let mapleader="\<Space>"   " leader is <SPACE>
        " save session, reopen it with vim -S
        nnoremap <leader>s :mksession<CR>

" COLORS
"""""""""""""""
        " colorscheme badwolf
        " colorscheme molokai
        " colorscheme solarized

" SPACES & TABS
"""""""""""""""
        set tabstop=4       " number of visual spaces per TAB
        set softtabstop=4   " number of spaces in TAB when editing
        set expandtab       " tabs are spaces

" UI CONFIG
"""""""""""""""
        set number          " show line numbers
        set cursorline      " highlight current line
        filetype indent on  " load filetype-specific indent files
        set wildmenu        " visual autocomplete for command menu
        set lazyredraw      " redraw only when we need to. (make vim faster)
        set showmatch       " highlight matching [{()}]

" SEARCHING
"""""""""""""""
        set incsearch       " search as characters are entered
        set hlsearch        " highlight matches
        " turn off search highlight (<space>h)
        nnoremap <leader>h :nohlsearch<CR>

" FOLDING
"""""""""""""""
        set foldenable          " enable folding (show all folds)
        set foldlevelstart=10   " open most folds by default
        set foldmethod=indent   " fold based on indent level (especial for python devs)

" MOVEMENT
"""""""""""""""
        " makes two lines behaves as one
        nnoremap j gj
        nnoremap k gk

" CtrlP
"""""""""""""""
        let g:ctrlp_match_window = 'bottom,order:ttb'
        let g:ctrlp_switch_buffer = 0

" NERDTree
"""""""""""""""
map <F2> :NERDTreeToggle<CR>

" BACKUP
"""""""""""""""
