" File: Timestamp.vim
"
" Purpose: insert timestamp into files
"
" Author: Ralf Arens <ralf.arens@gmx.de>
" Last Modified: 2000-03-30 09:31:03 CEST
" + It's summertime! OK, daylight saving time at least. Now timezone in
" + central Europe has four letters. Timestamp.vim will cope with this also.


" timestamps
" ¯¯¯¯¯¯¯¯¯¯
fun! Timestamp()
	mark z
	exe ':%s/\(.*Last Modified: \)\d\{4}-\d\{2}-\d\{2} \d\{2}:\d\{2}:\d\{2} \u\{3,4}\(.*\)$/\1'.strftime("%Y-%m-%d %T %Z").'\2/e'
	'z
endfun

" vim:set noet:tw=8:sw=8
