" File: HTML.vim
"
" Purpose: some stuff for editing HTML
"
" Author: Ralf Arens
" Last Modified: 2000-03-12 21:33:10 CET


" easily create tags of words
"	uses Quote.vim, which should have been already sourced
"
"	start tags
nmap _ :call Quote('<','>')<CR>
vmap _ :call QuoteVisual('<','>')<CR>
"	end tags
nmap ¯ :call Quote('</','>')<CR>
vmap ¯ :call QuoteVisual('</','>')<CR>

" options
set equalprg=tidy\ -quiet\ -wrap\ 78
set makeprg=tidy\ -quiet\ -e\ %
" example tidy output:
" line 22 column 3 - Warning: <table> lacks "summary" attribute
set errorformat=\%Eline\ %l\ column\ %c\ -\ Error:%m,\%Wline\ %l\ column\ %c\ -\ Warning:%m

