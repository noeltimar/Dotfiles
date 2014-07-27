" Enable Pathogen
execute pathogen#infect()

" LOOKS

" Load file type plugins and indentation
filetype plugin indent on         
" Enable syntax highlighting
syntax enable                     
" Highlight current line
"set cursorline
" Enable line numbers
set number                        
" Set terminal to 256 color
set t_Co=256                      
" Set GUI font
set guifont=Terminus\ 9           
" Set background
"set background=dark
let g:hybrid_use_Xresources = 1
" Set color scheme
colorscheme hybrid

" WHITESPACE

" Set tab to 4 spaces
set tabstop=4 shiftwidth=4        
" Use spaces instead of tabs
set expandtab
" Backspace through everything in insert mode
set backspace=indent,eol,start     

" SEARCHING

" Highligh matches
set hlsearch                      
" Incremental searching
set incsearch                     
" Searches are case insensitive
set ignorecase                    
" if they don't contain any capital letters
set smartcase                     

" What's this?
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview

"Split pane settings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

"Disable autocomment
set pastetoggle=
