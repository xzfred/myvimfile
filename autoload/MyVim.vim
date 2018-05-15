if exists('g:loaded_myvim')
  finish
endif
let g:loaded_myvim = 1

let s:cpo_save = &cpo
set cpo&vim

let &cpo = s:cpo_save
unlet s:cpo_save
