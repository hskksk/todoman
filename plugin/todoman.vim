scriptencoding utf-8
" todoman
" A TODO Manager
"
" Author: hskksk <hskksk@gmail.com>
"
" Source: https://github.com/hskksk/todoman

" == Script initialization {{{
if expand("%:p") ==# expand("<sfile>:p")
  unlet! g:todoman_loaded
endif
if exists('g:todoman_loaded') || &compatible || version < 703
    finish
endif

let g:todoman_loaded = 1
" }}}

" == Saving 'cpoptions' {{{
let s:save_cpo = &cpo
set cpo&vim
" }}}

" == Default configuration {{{
" -- Option ------------------------------ {{{
let g:todoman_do_mapping         = get(g: , 'todoman_do_mapping'         , 1)
let g:todoman_nday_for_search    = get(g: , 'todoman_nday_for_search'    , 14)
let g:todoman_directory          = get(g: , 'todoman_directory'          , "$HOME/todoman")
"}}}

" }}}

" == Default key mapping {{{
if g:todoman_do_mapping == 1
    nnoremap <silent> <leader>to :call todo_op#open_todo(0)<CR>
    nnoremap <silent> <leader>tn :call todo_op#open_todo(1)<CR>
endif "}}}

" == Restore 'cpoptions' {{{
let &cpo = s:save_cpo
unlet s:save_cpo
" }}}
" vim: fdm=marker:et:ts=4:sw=4:sts=4


