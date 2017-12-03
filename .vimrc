" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" This must be first, because it changes other options as side effect 
set nocompatible 

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
"execute pathogen#helptags()
"execute pathogen#infect()

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" One particularly useful setting is hidden. Its name isn’t too descriptive,
" though. It hides buffers instead of closing them. This means that you can
" have unwritten changes to a file and open a new file using :e, without being
" forced to write or undo your changes first. Also, undo buffers and marks are
" preserved while the buffer is open. This is an absolute must-have.
set hidden

" Set file extensions to ignore when autocompleting
set wildignore=*.swp,*.pyc,*.class

" Prevent Vim from writing backup/swap file
set nobackup
set noswapfile

" Set hotkey for 'paste mode'
set pastetoggle=<F2>


" GENERAL USEFUL SETTINGS """""""""""""""""""""""""""""""""""""""""""""""""""""
"set nowrap          " don't wrap lines
set backspace=indent,eol,start 
                    " allow backspacing over everything in insert mode
set relativenumber  " set relative line numbering
set number          " always show line numbers
set showmatch       " set show matching parenthesis
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,
                    "   case-sensitive otherwise
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set title           " change the terminal's title
"set mouse=a         " enable the mouse
set visualbell      " don't beep
set noerrorbells    " don't beep
set clipboard=unnamedplus "use the system clipboard
"set nostartofline   " don't jump to first character when paging
set scrolloff=10    " keep at least 5 lines of context around the cursor
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" hacky way to get rid of delay exiting insert mode:
inoremap <special> <Esc> <Esc>hl


" TAB/SPACE/INDENT SETTINGS """""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set expandtab       " always uses spaces instead of tab characters
set tabstop=4       " size of a hard tabstop
set shiftwidth=4    " number of spaces to use for autoindenting
set shiftround      " use multiple of shiftwidth when indenting with 
                    "   '<' and '>'
set smarttab        " insert tabs on the start of a line according to
                    "   shiftwidth, not tabstop
"set softtabstop=4   " a combination of spaces and tabs are used to
                    "   simulate tab stops at a width other than the 
                    "   (hard)tabstop

" APPEARANCE SETTINGS """""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ls=2            " status bar always on

"set colorcolumn=80  " set a vertical line at 80 columns
nnoremap <C-[> :set colorcolumn=0<CR>
nnoremap <C-]> :set colorcolumn=80<CR>

" insert mode underlines current line
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
nnoremap <F8> :set cul!<CR>
inoremap <F8> <C-o>:set cul!<CR>

" block cursor in normal, vertical line in insert, and underscore in replace
au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"'
au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | 
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | 
    \ endif
au VimLeave * silent execute '!echo -ne "\e[ q"'

" VIM HISTORY SETTINGS """"""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=500         " remember more commands and search history
set undolevels=500      " use many muchos levels of undo


" FILE OPTIONS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
    filetype plugin indent on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


" VIM LATEXSUITE """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:Tex_DefaultTargetFormat='pdf'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'

"let g:Tex_ViewRule_pdf='evince'


" SYNTAX HIGHLIGHTING """""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
    syntax enable 
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
" Currently not needed because of urxvt color scheme
"set background=dark


" OTHER SHORTCUT MAPPINGS """""""""""""""""""""""""""""""""""""""""""""""""""""
" remap : to ; when in normal mode
nnoremap ; :
nnoremap , ;

" remap jump to previous line/position
nnoremap '' ``
nnoremap "" ''

" these mappings stay in insert mode
inoremap II <Esc>I
inoremap AA <Esc>A
inoremap JJ <Esc>o
inoremap KK <Esc>O

" Use Q for formatting the current paragraph (or selection)
"vmap Q gq
"nmap Q gqap

" If you like long lines with line wrapping enabled, this solves the problem 
" that pressing down jumpes your cursor “over” the current line to the next 
" line. It changes behaviour so that it jumps to the next row in the editor
nnoremap j gj
nnoremap k gk

" clears the search buffer when you press ,/
nmap <silent> ,/ :nohlsearch<CR>

" maps file explorer to tx
"nnoremap \tx :Texplore

" maps taglist toggle to tt
"nnoremap ttt :TlistToggle<CR>

" In normal mode, press Space to toggle the current fold open/closed. If the 
" cursor is not in a fold, move to the right (the default behavior). In 
" addition, with the manual fold method, you can create a fold by visually 
" selecting some lines, then pressing Space.
set foldmethod=manual
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

" Make search results appear in the middle of the screen
"nnoremap n nzz
"nnoremap N Nzz
"nnoremap * *zz
"nnoremap # #zz


" MULTIPLE FILE NAVIGATION SHORTCUTS """"""""""""""""""""""""""""""""""""""""""
set splitbelow
set splitright
nnoremap <C-_> :sp<CR>:bn<CR>
nnoremap <C-\> :vsp<CR>:bn<CR>

" this first line deals with a bug in vim-latexsuite that
" interferes with remapping <C-j>
nnoremap <SID>I_won’t_ever_type_this <Plug>IMAP_JumpForward
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" shortcuts for next/previous buffer
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

" faster window resizing
"nnoremap <Up> <C-w>+
"nnoremap <Down> <C-w>-
"nnoremap <Left> <C-w><
"nnoremap <Right> <C-w>>

" pseudo zoom function (quick restore using Ctrl-W =)
nmap <silent> <leader>z :resize<CR>:vertical resize<CR>
nmap <silent> <leader>x <C-w>=


" MOVEMENT SHORTCUTS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quick window switching
inoremap <C-k> <up>
inoremap <C-j> <down>
inoremap <C-h> <left>
inoremap <C-l> <right>

" quick scrolling
noremap <up> <C-y>
noremap <down> <C-e>

" quick tab switching
nnoremap <right> :tabn<CR>
nnoremap <left> :tabp<CR>
nnoremap 1 1gt
nnoremap 2 2gt
nnoremap 3 3gt
nnoremap 4 4gt
nnoremap 5 5gt


" CHARACTER REMAPS """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap ~~ `


" DISABLING ARROW KEYS """""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" for normal mode
"noremap <up> <nop>
"noremap <down> <nop>
"noremap <left> <nop>
"noremap <right> <nop>
" for insert mode
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
" for visual mode
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>


" INCLUDES FOR OTHER CONF FILES """""""""""""""""""""""""""""""""""""""""""""""
source ~/.vim/aqt.vim
