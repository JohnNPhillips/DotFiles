" Interface
set autoread            " Auto-reload changed files
set number              " Show line numbers
set ruler               " Show cursor position
set showcmd             " Show current command being typed
set showmode            " Always show mode
set showtabline=2       " Always show tab bar
set so=5                " Lines ahead to show when scrolling

" Tabs and spaces
set expandtab
set smarttab
set smartindent
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Ctrl+S -> Save
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>

" Ctrl+Z -> Background (in insert mode)
imap <C-z> <ESC><C-z>

" F7 -> Go left a tab, F8 -> Go right a tab
map <F7> :tabp<CR>
map <F8> :tabn<CR>
imap <F7> <ESC>:tabp<CR>
imap <F8> <ESC>:tabn<CR>

