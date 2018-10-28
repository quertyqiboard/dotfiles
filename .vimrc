runtime! debian.vim
" Vundle settings, mandatory
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim " set the runtime path to include Vundle and initialize
set rtp+=/usr/bin/fzf
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' " let Vundle manage Vundle, required
Plugin 'joshdick/onedark.vim'
Plugin 'morhetz/gruvbox'
Plugin 'xuhdev/vim-latex-live-preview'
call vundle#end()            " required
filetype plugin indent on    " required
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
syntax on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  filetype plugin indent on
endif

function! FixLastSpellingError()
	normal!	mm[s1z=`m
endfunction

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
colorscheme onedark
let mapleader = ","
set number relativenumber " enable hybrd line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set lazyredraw          " redraw only when we need to.
set backspace=indent,eol,start  " backspace for dummys
set showmatch           " highlight matching [{()}]
set hlsearch            " highlight matches
set incsearch           " search as characters are entered
set encoding=utf-8	" Force utf-8 encoding
set nostartofline	"
set autoindent		" Autoindent blocks of code (in python)
set history=500		" More command arrow-ups
set undolevels=500	" More undos and redos
set nobackup 		" Remove dumb backus
set splitbelow		" Non-retarded splitting
set splitright		" Non-retarded splitting
set foldenable          " auto fold code
set gdefault            " the /g flag on :s substitutions
set showmode		" Show current mode
set linespace=0         " No extra spaces between rows
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Normal keybindings

" Make j and k go down one visual line
nnoremap j gj
nnoremap k gk

" Fix last spelling error
" nnoremap ;sp :call FixLastSpellingError()<cr>

" Mapping function keys
map <F2> :LLPStartPreview<CR>
map <F3> :!wc <C-R>%<CR>

" Tab managment like in firefox
nnoremap <C-N> :tabp<CR>
nnoremap <C-M> :tabn<CR>
nnoremap <C-T> :tabnew<CR>
nnoremap <C-W> :tabclose<CR>

" Navigating with guides
map <NUL> <Esc>/<++><CR>"_c4l
nnoremap <NUL> <Esc>/++<CR>h"_c4l
inoremap <NUL> <++>

" Quit vim with Ctrl q
nnoremap <C-Q> :qa<CR>
inoremap <C-Q> :qa<CR>
vnoremap <C-Q> :qa<CR>

" Update / write file with Ctrl z
nnoremap <C-Z> :w<CR>
inoremap <C-Z> <C-O>:w<CR>
vnoremap <C-Z> <C-C>:w<CR>

" Fuzzy file finder
nnoremap <C-P> :FZF<CR>
inoremap <C-P> <Esc>:FZF<CR>
vnoremap <C-P> <Esc>:FZF<CR>

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" LaTeX keybindings
autocmd FileType tex inoremap ,df \dfrac{<++>}{<++>}<Esc>
autocmd FileType tex inoremap ,it \textit{<++>}<Esc>
autocmd FileType tex inoremap ,bo \textbf{<++>}<Esc>
autocmd FileType tex inoremap ,ul \underline{<++>}<Esc>
autocmd FileType tex inoremap ,sec \section{}<CR><CR><++><Esc>2kf}i
autocmd FileType tex inoremap ,ssec \subsection{}<CR><CR><++><Esc>2kf}i
autocmd FileType tex inoremap ,sssec \subsubsection{}<CR><CR><++><Esc>2kf}i

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"Deletes all trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Delete useless LaTeX files whenever i exit
" autocmd VimLeave *.tex !texclear %
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
