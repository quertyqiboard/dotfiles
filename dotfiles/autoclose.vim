inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
" inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ´ ´´<Esc>i
inoremap ` ``<Esc>i
inoremap ` ``<Esc>i

" HTML tags
autocmd FileType html inoremap ,title   <title></title><Esc>F>a
autocmd FileType html inoremap ,body   <body></body><Esc>F>a
autocmd FileType html inoremap ,h1   <h1></h1><Esc>F>a
autocmd FileType html inoremap ,h2   <h2></h2><Esc>F>a
autocmd FileType html inoremap ,h3   <h3></h3><Esc>F>a
autocmd FileType html inoremap ,p    <p></p><Esc>F>a
autocmd FileType html inoremap ,a    <a></a><Esc>F>a
autocmd FileType html inoremap ,b    <b></b><Esc>F>a
autocmd FileType html inoremap ,cite   <cite></cite><Esc>F>a
autocmd FileType html inoremap ,div   <div></div><Esc>F>a
autocmd FileType html inoremap ,em   <em></em><Esc>F>a
autocmd FileType html inoremap ,footer   <footer></footer><Esc>F>a
autocmd FileType html inoremap ,head   <head></head><Esc>F>a
autocmd FileType html inoremap ,img   <img></img><Esc>F>a
autocmd FileType html inoremap ,nav   <nav></nav><Esc>F>a
autocmd FileType html inoremap ,ol   <ol></ol><Esc>F>a
autocmd FileType html inoremap ,script   <script></script><Esc>F>a
autocmd FileType html inoremap ,small   <small></small><Esc>F>a
autocmd FileType html inoremap ,span   <span></span><Esc>F>a
autocmd FileType html inoremap ,style   <style></style><Esc>F>a
autocmd FileType html inoremap ,table   <table></table><Esc>F>a
autocmd FileType html inoremap ,td   <td></td><Esc>F>a
autocmd FileType html inoremap ,ul   <ul></ul><Esc>F>a
autocmd FileType html inoremap ,li   <li></li><Esc>F>a

" LaTeX keybindings
autocmd FileType tex inoremap ,df \dfrac{<++>}{<++>}<Esc>
autocmd FileType tex inoremap ,it \textit{<++>}<Esc>
autocmd FileType tex inoremap ,bo \textbf{<++>}<Esc>
autocmd FileType tex inoremap ,ul \underline{<++>}<Esc>
autocmd FileType tex inoremap ,fn \footnote{}<Esc>
autocmd FileType tex inoremap ,lfn \footnote{}<Esc>i\large{}<Esc>i
autocmd FileType tex inoremap ,sc \section{}<CR><CR><++><Esc>2kf}i
autocmd FileType tex inoremap ,ssc \subsection{}<CR><CR><++><Esc>2kf}i
autocmd FileType tex inoremap ,sssc \subsubsection{}<CR><CR><++><Esc>2kf}i

" Python snippets
autocmd FileType python inoremap range range(,<++>)<Esc>0f(a
autocmd FileType python inoremap forl for <++> in <++>:<CR><++><Esc>k0ff
autocmd FileType python inoremap forr for <++> in range(<++>, <++>):<CR><++><Esc>k0ff
autocmd FileType python inoremap print print()<Esc>F(a
autocmd FileType python inoremap def def *(<++>):<CR><++><Esc>k0f*cl
autocmd FileType python inoremap str str()<Esc>i
autocmd FileType python inoremap int int()<Esc>i
autocmd FileType python inoremap float float()<Esc>i
autocmd FileType python inoremap yield yield()<Esc>i
autocmd FileType python inoremap .jo .join()<Esc>i
autocmd FileType python inoremap .ap .append()<Esc>i
autocmd FileType python inoremap .fo .format()<Esc>i

" Templates
nnoremap note :read ~/.vim/src/snippets/notes<CR>kdd:set filetype=markdown<CR>
nnoremap arti :read ~/.vim/src/snippets/article<CR>kdd:set filetype=tex<CR>
nnoremap html :read ~/.vim/src/snippets/html<CR>kdd:set filetype=html<CR>

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Make j and k go down one visual line
nnoremap j gj
nnoremap k gk
" Mapping function keys
map <F2> :LLPStartPreview<CR>
map <F3> :!wc <C-R>%<CR>
" Spelling
nnoremap ,st :call GetSpell()<CR>
nnoremap ,ss :call FixLastSpellingError()<CR>
nnoremap ,sg :call AddGoodList()<CR>
nnoremap ,se :call SpellEn()<CR>
nnoremap ,sd :call SpellDe()<CR>
nnoremap ,sp :call SpellEs()<CR>
" Find and replace
noremap ,rg :%s///g<Left><Left><Left>
noremap ,rl :s///g<Left><Left><Left>
" create  a file
nnoremap ,tf :!touch
" Tab management like in firefox
nnoremap <C-n> :tabp<CR>
nnoremap <C-m> :tabn<CR>
nnoremap <C-T> :tabnew<CR>
nnoremap <C-W> :tabclose<CR>
" Navigating with guides
map <NUL> <Esc>/<++><CR>"_c4l
nnoremap <NUL> <Esc>/++<CR>h"_c4l
inoremap <NUL> <++>
" Quit vim with Ctrl q
nnoremap <C-Q> :qa<CR>
" Update / write file with Ctrl z
nnoremap <C-Z> :w<CR>
inoremap <C-Z> <C-O>:w<CR>
" Fuzzy file finder
nnoremap <C-P> :FZF ~/<CR>
" Clear search with Ctrl l
nnoremap <C-c> :nohl<CR><C-c>:echo "Search Cleared"<CR>
" Indenting / outdenting // move line up / down
nnoremap <C-h> <<
nnoremap <C-l> >>
vnoremap <C-h> <<
vnoremap <C-l> >>
nnoremap ,j ddp
nnoremap ,k dd2kp
