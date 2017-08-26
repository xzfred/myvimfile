"=============================================================================
" MeetVim.vim --- Initialization and core files for SpaceVim
" Copyright (c) 2016-2017 xzfred & Contributors
" Author: xzfred <xzfred@gmai.com>
" URL: https://meetvim.cn
" License: MIT license
"=============================================================================

scriptencoding utf-8

if !exists('g:meetvim_layers')
    let g:meetvim_layers = {}
endif

function! MeetVim#init()
endf

if exists('g:loaded_meetvim')
    finish
endif
let g:loaded_meetvim = 1

let s:cpo_save = &cpo
set cpo&vim
let &cpo = s:save_cpo
unlet s:save_cpo
