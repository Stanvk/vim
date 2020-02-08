" ############################# "
" ##                         ## "
" ##       Load Plugins      ## "
" ##			             ## "
" ############################# "

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'icymind/neosolarized'
call plug#end()




" ############################ "
" ##			            ## "
" ##	Misc. Configs       ## "
" ##                        ## "
" ############################ "

"--- Vim Buffet TabLine ---"
let g:buffet_always_show_tabline = 1
let g:buffet_powerline_separators = 1
let g:buffet_show_index = 1

"--- Set colours ---"
set termguicolors
syntax enable

"--- Fix Airline Theme ---"
let g:airline_powerline_fonts=1

"--- Configure NERDTree to open in new tabs ---"
let NERDTreeMapOpenInTab='<ENTER>'

"--- Set Line numbering ---"
set nu

"--- Set Linespacing --- "
set linespace=10

"--- Set Colourscheme and Airline theme ---"
colorscheme NeoSolarized
set background=dark
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "normal"
let g:neosolarized_vertSplitBgTrans = 1
let g:airline_theme="luna"

"--- Set seach Highlighting ---"
set hlsearch

"--- Expand tabs into spaces ---"
set expandtab

"--- This amount of spaces to be exactly ---"
set tabstop=4

"--- Set the ruler ---"
set ruler

"--- Set configuration for Vim-buffet plugin ---"
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"


" ############################## "
" ##                          ## "
" ##    Custom Keybindings    ## "
" ## 			              ## "
" ############################## "

"Toggle NerdTree on Ctrl-t"
map <C-t> <ESC>:NERDTreeToggle<CR>

"Next tab on alt-right"
map <M-Right> <ESC>:tabn<CR>

"Previous tab on alt-left"
map <M-Left> <ESC>:tabp<CR>

"New tab on alt-t"
map t <ESC>:tabnew<CR>

"Close tab on alt-r"
map r <ESC>:tabclose<CR>
