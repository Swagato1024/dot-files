"Syntax and numbering

set nu " setting line number
syntax on

"Autoread on
set autoread

"Highlighting

set incsearch 
set hls
nohl

"Selecting block by block
nnoremap <C-s> ViB
vnoremap <C-s> ViB


"Backup
set nobackup 
set noswapfile

"Indentation

filetype indent on " turns on autoindent based on file type
set autoindent     " Auto indentation
set expandtab      " Converts tab to spaces
set tabstop=2      " Width of tab for a \t char read from file
set softtabstop=2  " Width of tab when tab key or backspace is pressed
set shiftwidth=2   " Width of tab on indentation
set smartindent

"Status
set showcmd       " Shows keystrokes of unfinished commands
set ruler        

"Wrap
set wrap 
"set wrapmargin=100


"Leader
let mapleader=","

"Custom mappings
nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" autocomplete
inoremap <tab><tab> <c-p>

"Switching buffer
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>pb :bprev<cr>

"Writing a file
nnoremap <leader>w :w<cr>
inoremap jk <esc>
inoremap <C-s> <esc>:w<cr><cr>

nnoremap <leader>q :q!<cr>

"Copying text to clipboard"
vnoremap <C-y> "*y

"Auto Command
autocmd BufWritePre *.sh :normal gg=G``
autocmd BufWritePre *.js :normal gg=G``

"Auto Indent
inoremap <leader>= <esc>mmgg=G`mi
nnoremap <leader>= mmgg=G`m

"Comment Shortcut
autocmd FileType sh,bash inoremap <leader>c <esc>0i#
autocmd FileType javascript inoremap <leader>c <esc>0i//
autocmd FileType javascript nnoremap <leader>c ^i//<esc>

"Comment Block
autocmd FileType javascript vnoremap <leader>c $mmI<esc>O/*<esc>`mo*/<esc>

"Uncomment Block
"autocmd Filetype javascript nnoremap <leader>bu /*\/<cr>k2dd

"Selecting shortcuts
nnoremap <space> viw


"Coding shortcuts

inoremap (<tab> ()<Left>
inoremap {<tab> {}<Left><cr>

inoremap f<tab> function () {<cr>}<esc><Up>wi
inoremap if<tab> if() {<cr>}<up><esc>wa
inoremap for<tab> for() {<cr>}<up><esc>wa
inoremap while<tab> while() {<cr>}<up><esc>wa

set showmatch

"folding
set foldmethod=indent

nnoremap <leader>n :NERDTreeToggle<cr>

" setting colorscheme
colorscheme OceanicNext

" source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

"airline
let g:airline#extensions#tabline#enabled = 1

"testFrame work
inoremap  <leader>t  it('should ', function() {<cr>strictEqual(actual, expected);<cr>});

