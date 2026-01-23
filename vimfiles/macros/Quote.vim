" File: Quote.vim
"
" Purpose: quote text (single words or visually selected regions)
"
" Syntax:
"	quote single word
"	:call Quote("starting_quote_char","second_quote_char")
"
"	quote visually selected area
"	:`<,`>call QuoteVisual("starting_quote_char","second_quote_char")
"
"	second argument is optional, if left out `starting_quote_char' is used
"
" Author: Ralf Arens <ralf.arens@gmx.net>
" Last Modified: 2000-03-15 13:39:42 CET
" + Bugfix for QuoteVisual(...). If Visual area spanned over lines, quoting
" + was wrong


" quote single words
fun! Quote(startq, ...)
	" parse args
	if (a:0 > 0)
		let endq = a:1
	else
		let endq = a:startq
	endif

	" one word back
	norm ge
	" not on first byte of file?
	if (col(".") != 1)
		norm w
	elseif (line(".") != 1)
		norm w
	endif
	let startcol = col(".")
	norm e
	let endcol = col(".")
	exe "norm ".endcol."|a".endq."".startcol."|i".a:startq."e"
endfun


" quote visually selected area
fun! QuoteVisual(startq, ...) range
	if (a:0 > 0)
		let endq = a:1
	else
		let endq = a:startq
	endif
	exe "norm `>a".endq.""
	exe "norm `<i".a:startq."`>"
endfun

" an example mapping for this function
"vmap _ :call QuoteVisual('"')<CR>

" vim: set tw=8 sw=8 sts=8
