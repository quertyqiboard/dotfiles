let mapleader = ","
" Nerd*
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDToggleCheckAllLines = 0
let NERDTreeShowHidden=1
" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_auto_trigger = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_invoke_completion = '<C-N>'
let g:ycm_show_diagnostics_ui = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:molokai_original = 1
let g:rehash256 = 1
" Airline theme
let g:airline_theme='wombat'
set background=dark
set bg=dark		" Set solarized background to dark
set number relativenumber " enable hybrid line numbers
set showcmd             " show command in bottom bar
set backspace=indent,eol,start  " backspace for dummys
set showmatch           " highlight matching [{()}]
set hlsearch            " highlight matches
set incsearch           " search as characters are entered
set nostartofline	"
set history=500		" More command arrow-ups
set undolevels=500	" More undos and redos
set nobackup 		" Remove dumb backups
set splitbelow		" Non-retarded splitting
set splitright		" Non-retarded splitting
set foldenable          " auto fold code
set gdefault            " the /g flag on :s substitutions
set showmode		" Show current mode
set linespace=0         " No extra spaces between rows
set t_Co=16		" idk lol
set cursorline		" idk lol
set colorcolumn=80 	" creates visible 80 char barrier
set termencoding=utf-8	" same thing as below
set encoding=utf-8	" Force UTF-8 encoding
set autoread		" Autoupdate file when opened
set smartindent		" Non-retarded indenting
set autoindent		" Autoindent blocks of code (in python)
set ttyfast		" Optimization for urxvt
set nojoinspaces	" removes annoying spaces after certain commands
set magic		" char magic
set completeopt=menu,menuone,longest,preview
