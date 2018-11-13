nnoremap j gj
nnoremap k gk
map <F2> :LLPStartPreview<CR>
map <F3> :!wc <C-R>%<CR>
nnoremap ,st :call GetSpell()<CR>
nnoremap ,ss :call FixLastSpellingError()<CR>
nnoremap ,sg :call AddGoodList()<CR>
nnoremap ,se :call SpellEn()<CR>
nnoremap ,sd :call SpellDe()<CR>
nnoremap ,sp :call SpellEs()<CR>
noremap ,rg :%s///g<Left><Left><Left>
noremap ,rl :s///g<Left><Left><Left>
nnoremap ,tf :!touch
nnoremap <C-n> :tabp<CR>
nnoremap <C-m> :tabn<CR>
nnoremap <C-T> :tabnew<CR>
nnoremap <C-W> :tabclose<CR>
map <NUL> <Esc>/<++><CR>"_c4l
nnoremap <NUL> <Esc>/++<CR>h"_c4l
inoremap <C-Space> <++>
nnoremap <C-Q> :qa<CR>
nnoremap <C-Z> :w<CR>
inoremap <C-Z> <C-O>:w<CR>
nnoremap <C-P> :FZF ~/<CR>
nnoremap <C-c> :nohl<CR><C-c>:echo "Search Cleared"<CR>
nnoremap <C-h> <<
nnoremap <C-l> >>
vnoremap <C-h> <<
vnoremap <C-l> >>
nnoremap ,j ddp
nnoremap ,k dd2kp
vmap ss <plug>NERDCommenterToggle
nmap ss <plug>NERDCommenterToggle
