" define my filetypes
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    " z3d files are xml
    au! BufRead,BufNewFile *.z3d		setfiletype xml
augroup END

