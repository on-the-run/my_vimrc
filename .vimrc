set tabstop=4
set shiftwidth=4
set ai
set number
set ruler
set hlsearch
set ignorecase
set title
syntax on
"set cursorline
set ttyfast
set wildmenu
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list
set binary
set expandtab
set showcmd

set splitbelow
set splitright
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

nmap <F7> :!ctags

set tags=./tags,./TAGS,tags,TAGS

" Mark bad whitespace
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  endif

" Python specific
au BufNewFile,BufRead *.py
    \ set tabstop=2 | 
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set smartindent |
    \ set fileformat=unix |
    \ set encoding=utf-8 |
    \ set colorcolumn=80 |

