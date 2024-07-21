set lazyredraw
set ttyfast
set number relativenumber " Relative numbers for jumping
set nu rnu " Hybrid numbers, you have relative numbers and the current line number

set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>

set scrolloff=8 " Keep at least 8 lines below cursor

set foldmethod=manual " To avoid performance issues, I never fold anything so...

set noshowmode " We don't need to know the insert/normal mode casue we have lualine

set ignorecase
set nohlsearch " Clear search highlights

set splitbelow splitright " Set the splits to open at the right side and below

let mapleader = " "

map <Leader>q :q<Enter>
map <Leader>w :w<Enter>


" copy to clipboard
vmap <Leader>y "+y
nmap <Leader>y "+y
vmap <Leader>Y "+yg_
nmap <Leader>Y "+yg_

# paste from clipboard
vmap <leader>p "+p
nmap <leader>p "+p

" vim.keymap.set("v", "<leader>y", '"+y')
" vim.keymap.set("n", "<leader>y", '"+y')
" vim.keymap.set("v", "<leader>Y", '"+yg_')
" vim.keymap.set("n", "<leader>Y", 'yg_')
"
" Map Ctrl+P to paste text at the beginning of the word
