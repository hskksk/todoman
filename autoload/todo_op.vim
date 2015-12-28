pyfile <sfile>:h:h/src/todo_op.py
python import vim

function! todo_op#open_todo(new) "{{{
    python << EOF
import vim
import os
dir=os.path.expandvars(vim.eval("g:todoman_directory"))
new=vim.eval("a:new")=="1"
nday_for_search=int(vim.eval("g:todoman_nday_for_search"))
#vim.command(':let fname="%s"'%open_todo(dir, new, nday_for_search))
fname=open_todo(dir, new, nday_for_search)
if fname != "__notfound__":
	vim.command(':edit %s/%s'%(dir,fname))
else:
	print "could not find previous todo file"
EOF

endfunction "}}}
