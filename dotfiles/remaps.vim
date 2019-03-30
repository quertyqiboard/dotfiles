nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF ~/<CR>
nnoremap <C-g> :Goyo<CR>
nmap ss <plug>NERDCommenterToggle
vmap ss <plug>NERDCommenterToggle
map <F2> :LLPStartPreview<CR>
map <F3> :!wc <C-R>%<CR>
map <F4> :call GetSpell()<CR>>
map <NUL> <Esc>/<++><CR>:nohl<CR>"_c4l


nnoremap j gj
nnoremap k gk
nnoremap ,ss :call FixLastSpellingError()<CR>
nnoremap ,sg :call AddGoodList()<CR>
nnoremap ,se :call SpellEn()<CR>
nnoremap ,sd :call SpellDe()<CR>
nnoremap ,sp :call SpellEs()<CR>
nnoremap ,rg :%s///g<Left><Left><Left>
nnoremap ,rl :s///g<Left><Left><Left>
nnoremap ,tf :!touch
nnoremap <C-n> :tabp<CR>
nnoremap <C-m> :tabn<CR>
nnoremap <C-T> :tabnew<CR>
nnoremap <C-W> :tabclose<CR>
nnoremap <NUL> <Esc>/++<CR>h"_c4l
inoremap <C-Space> <++>
nnoremap <C-Q> :qa<CR>
nnoremap <C-Z> :w<CR>
inoremap <C-Z> <C-O>:w<CR>
nnoremap <C-c> :nohl<CR><C-c>:echo "Search Cleared"<CR>
nnoremap <C-h> <<
nnoremap <C-l> >>
vnoremap <C-h> <<
vnoremap <C-l> >>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :FZF ~/<CR>
nnoremap <C-g> :Goyo<CR>
nmap ss <plug>NERDCommenterToggle
vmap ss <plug>NERDCommenterToggle
map <F2> :LLPStartPreview<CR>
map <F3> :!wc <C-R>%<CR>
map <F4> :call GetSpell()<CR>>
map <NUL> <Esc>/<++><CR>:nohl<CR>"_c4l
