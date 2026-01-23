" File: Sort.vim
"
" Purpose: sort lines
"	takes as arguments range, descending/descending, delimiter,
"	priority of fields (at least the Perl powered function)
"
" Author: Ralf Arens
" Last Modified: 2000-03-10 13:15:52 CET


" use Perl for sorting
if has("perl")
    function! Sort_pl() range
	let complex = input("Complex sort (say 'y')? ")
	let descending = input("Sort descending, z..a, 9..0 (say 'y')? ")
	let firstline = a:firstline
	let lastline = a:lastline
	perl ($success, $firstline) = VIM::Eval(firstline)
	perl ($success, $lastline) = VIM::Eval(lastline)
	perl @lines = $curbuf->Get($firstline .. $lastline)
	if complex == "y"
	    let delimiter= input("Delimiter, + makes greedy (Default ' ')? ")
	    if delimiter == ""
		let delimiter= " "
	    endif
	    let field = input("Which field (Default 0)? ")
	    if field == ""
		let field = "0"
	    endif
	    perl ($success, $delimiter) = VIM::Eval(delimiter)
	    perl ($success, $field) = VIM::Eval(field)
	    if descending == "y"
		perl @lines =sort { @f1=split(/$delimiter/, $b); @f2=split(/$delimiter/, $a); $f1[$field] cmp $f2[$field] } (@lines)
	    else
		perl @lines =sort { @f1=split(/$delimiter/, $a); @f2=split(/$delimiter/, $b); $f1[$field] cmp $f2[$field] } (@lines)
	    endif
	else
	    if descending == "y"
		perl @lines = sort {$b cmp $a} (@lines)
"		perl @lines = sort {($b <=> $a) || ($b cmp $a)} (@lines)
	    else
		perl @lines = sort {$a cmp $b} (@lines)
"		perl @lines = sort {($a <=> $b) || ($a cmp $b)} (@lines)
	    endif
	endif
	perl $curbuf->Set($firstline, @lines)
	echo "  sorting finished"
    endfunction
endif


" use external sort command
"   TODO implement further options of `sort'
fun! Sort() range
    let complex = input("Complex sort (say 'y')? ")
    if (complex == "y")
	let arg = ""
	let blanks = input("Ignore leading blanks in sort fields or keys (y|n)? ")
	if (blanks == "y")
	    let arg = " -b"
	endif
	let igcase = input("Ignore case in keys (y|n)? ")
	if (igcase == "y")
	    let arg = arg. " -f"
	endif
	let descending = input("Sort ascending (y|n)? ")
	if (descending == "y")
	    let arg = arg. " -r"
	endif
	exe ":".a:firstline.",".a:lastline."!sort".arg
    else
	exe ":".a:firstline.",".a:lastline."!sort"
    endif
endfun


" vim:noet:ts=8:sw=4:sts=4
