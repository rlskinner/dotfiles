" **tags.vim**
" 
" Use your own tags with vim.
" 
" FUNCTIONS:
" 
"     TagsfileUpdate(pattern,offsetpre,offsetpost,tagsfile)
" 
" Scan the current file for occurrences of pattern, remove offsetpre
" characters from the start, and offsetpost characters from the end of 
" the hits, and add the resulting 'tags' to the tagsfile.
" 
" MAPS:
" 
"   For now, these maps apply to the tagsfile d:/me/mytags, to tags of 
"   the form **The tag**, and to links of the form |The tag|.
" 
"   ,ut                    Update tagsfile for current file.
"   ,uT                    Update tagsfile for all currently loaded files.
"   ,et                    Edit tagsfile.
"   ,t or <2-LeftMouse>    Jump to tag under cursor.
" 
" EXAMPLE: put a destination in your file:
" 
"   **My tag**
" 
" hit ,ut. Now when you put 
" 
"   |My tag|
" 
" in another file, and double-click it (or hit ,t), you jump to **My tag**

" -----------------------------------------------------------------------------
map ,ut :call TagsfileUpdate("\\*\\*.*\\*\\*",2,2,expand("~")."mytags")<cr>
map ,uT :call TagsfileUpdateAll()<cr>
map ,et :execute "e!".expand("~")."mytags"<cr>gg
map ,t :call TagsfileJump()<cr>
" ----------------------------------------------------------------------------- 
if !exists("_tags_vim_sourced")
let _tags_vim_sourced=1
" ----------------------------------------------------------------------------- 
" let &tags="d:/me/mytags,".&tags "
let &tags="mytags,".&tags
set notagbsearch

function! TagsfileJump()
  execute "normal ?\|\rlv/\|\rh\"zy"
  execute "tag ".@z
  normal zt
endfunction

function! TagsfileUpdateAll()
  let bl=bufnr("$")
  let i=1
  while i<=bl
    if bufexists(i)
      execute "b!".i
      normal ,ut
    endif
    let i=i+1
  endwhile
endfunction

" Update tagfile for targets in current file
" p="\\*\\*.*\\*\\*"    find all occurrences of **A target**
" offsetpre=2              remove the first two chars: A target**
" offsetpost=2             remove the last two chars: A target
" let a=TagsfileUpdate("\\*\\*.*\\*\\*",2,2,"d:/me/mytags")                     
function! TagsfileUpdate(p,offsetpre,offsetpost,tagsfile)
  let oldch=&ch|set ch=5|let fn=expand("%:p")|let out=""
  let i=1|let n=line("$")
  while i<=n
    let l=matchstr(getline(i),a:p)
    if l!=""
      let t=strpart(l,a:offsetpre,strlen(l)-a:offsetpre-a:offsetpost)
      let out=out.t."\t".fn."\t/".l."\n"
    endif
    let i=i+1
  endwhile
  let bn=bufnr("%")
  execute "sp! ".a:tagsfile
  let fn=fnamemodify(fn,":gs?\\?\\\\\\?")
  let i=1|let n=line("$")
  while i<=n
    execute i
    if match(getline("."),fn)>0
      execute "normal dd"
    else
      let i=i+1
    endif
  endwhile
  let @a=out
  execute "normal gg\"aP"
  execute "w!|bd|b".bn
  let &ch=oldch
endfunction

" ----------------------------------------------------------------------------- 
endif
" ----------------------------------------------------------------------------- 
