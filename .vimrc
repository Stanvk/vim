"____________                     ______ ___                   _____                         
"__  ___/_  /______ __________   ____  /__( )_______    ___   ____(_)______ _________________
"_____ \_  __/  __ `/_  __ \_ | / /_  //_/|/__  ___/    __ | / /_  /__  __ `__ \_  ___/  ___/
"____/ // /_ / /_/ /_  / / /_ |/ /_  ,<     _(__  )  _____ |/ /_  / _  / / / / /  /   / /__  
"/____/ \__/ \__,_/ /_/ /_/_____/ /_/|_|    /____/   _(_)____/ /_/  /_/ /_/ /_//_/    \___/  
"
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
map <C-t> <ESC>:NERDTreeToggle<CR>
map [C <ESC>:tabn<CR>
map [D <ESC>:tabp<CR>
map † <ESC>:tabnew<CR>
map ® <ESC>:tabclose<CR>
map <Leader>s <ESC>:update<CR>
map <Leader>q <ESC>:q<CR>
