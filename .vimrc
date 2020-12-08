" Stanvk's .vimrc
" Fairly simple, but it helps to set up vim really quickly.
"                                                                                            

"
" Firstly install some plugins.
"
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'icymind/neosolarized'
call plug#end()

"
" Set some colors.
"
set termguicolors
syntax enable


"
" Use powerline font.
"
let g:airline_powerline_fonts=1

"
" Set Line Numbering.
"
set nu

"
" Set linespace (only usable in GUI vim).
"
set linespace=10

"
" Set up coloursceme and airline theme.
"
colorscheme NeoSolarized
set background=dark
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "normal"
let g:neosolarized_vertSplitBgTrans = 1
let g:airline_theme="luna"

"
" Set search highlighting.
"
set hlsearch

"
" Expand tab into spaces and define how much spaces.
"
set expandtab
set tabstop=4

"
" Set ruler.
"
set ruler

"
" Set some custom keybindings.
"

"Map Control-t to Tree toggle
map <C-t> <ESC>:NERDTreeToggle<CR>

"Map Alt-Right to next tab
map [C <ESC>:tabn<CR>

"Map Alt-Left to previous tab
map [D <ESC>:tabp<CR>

"Map Alt-t to new tab
map † <ESC>:tabnew<CR>

"Map Alt-r to close tab
map ® <ESC>:tabclose<CR>

"Map \-s to :update
map <Leader>s <ESC>:update<CR>

"Map \-q to quit
map <Leader>q <ESC>:q<CR>
