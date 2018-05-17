"=============================================================================
" MeetVim.vim --- Initialization and core files for SpaceVim
" Copyright (c) 2016-2017 xzfred & Contributors
" Author: xzfred <xzfred@gmai.com>
" URL: https://meetvim.cn
" License: MIT license
"=============================================================================

scriptencoding utf-8

if exists('g:loaded_meetvim')
    finish
endif
let g:loaded_meetvim = 1

let s:cpo_save = &cpo
set cpo&vim


"{{{
"let g:amap =  {}
"call leaderGuide#register_prefix_descriptions("\\", "g:amap")
"nnoremap <silent> \ :<c-u>LeaderGuide '\'<CR>

"let g:bmap = {}
"call leaderGuide#register_prefix_descriptions("[", "g:bmap")
"nnoremap <silent> [ :<c-u>LeaderGuide '['<CR>

"let g:cmap = {}
"call leaderGuide#register_prefix_descriptions("]", "g:cmap")
"nnoremap <silent> ] :<c-u>LeaderGuide ']'<CR>

"let g:dmap = {}
"call leaderGuide#register_prefix_descriptions("c", "g:dmap")
"nnoremap <silent> c :<c-u>LeaderGuide 'c'<CR>

"let g:emap = {}
"call leaderGuide#register_prefix_descriptions("g", "g:emap")
"nnoremap <silent> g :<c-u>LeaderGuide 'g'<CR>
"
"function! s:default_mapkey(mkey)
    "call signature#utils#Input()
"endfunction

"let g:fmap = {'pre' : [' ', 'pre', function('s:default_mapkey')]}
"call leaderGuide#register_prefix_descriptions("m", "g:fmap")
"nnoremap <silent> m :<c-u>LeaderGuide 'm'<CR>
    "let g:_spacevim_mappings_prefixs['[SPC]'] = {'name' : '+SPC prefix'}
    "let g:space_map['?'] = ['Unite menu:CustomKeyMaps -input=[SPC]', 'show mappings']
"}}}
"

function s:display_filter() abort "{{{
    let g:leaderGuide#displayname = substitute(g:leaderGuide#displayname, '\c<cr>$', '', '')
    "echom g:leaderGuide#displayname
endfunction "}}}

function s:map_filter(layout, smap, dict) abort "{{{
    let l:del = []
    for key in a:smap
        if type(a:dict[key]) == type([]) && a:dict[key][1] == 'jump window 1..9' 
            call add(l:del, key)
        endif
    endfor
    call filter(a:smap, {idx, val -> index(l:del, val) == -1})
endfunction "}}}

function MeetVim#init() abort " {{{
    let g:space_map = {}
    let g:space_map.t = {'name' : '+Toggles'}
    let g:space_map.t.h = {'name' : '+Toggles highlight'}
    let g:space_map.t.m = {'name' : '+modeline'}
    let g:space_map.T = {'name' : '+UI toggles/themes'}
    let g:space_map.a = {'name' : '+Applications'}
    let g:space_map.b = {'name' : '+Buffers'}
    let g:space_map.c = {'name' : '+Comments'}
    let g:space_map.f = {'name' : '+Files'}
    let g:space_map.j = {'name' : '+Jump/Join/Split'}
    let g:space_map.m = {'name' : '+Major-mode'}
    let g:space_map.w = {'name' : '+Windows'}
    let g:space_map.p = {'name' : '+Projects'}
    let g:space_map.h = {'name' : '+Help'}
    let g:space_map.n = {'name' : '+Narrow/Numbers'}
    let g:space_map.q = {'name' : '+Quit'}
    let g:space_map.l = {'name' : '+Language Specified'}
    let g:space_map.s = {'name' : '+Searching/Symbol'}
    let g:space_map.r = {'name' : '+Registers/rings/resume'}
    let g:space_map.d = {'name' : '+Debug'}
    let g:space_map[';'] = {'name' : '+Toggles Comment Line'}

    "call MeetVim#set_leader_keys('1..9', '', 'jump 1..9 window')
    call MeetVim#Leader#declare_prefix(g:space_map, '1..9', 'jump 1..9 window', '')
    for i in range(1, 9)
        call MeetVim#set_leader_keys(i, i . 'wincmd w', 'jump window 1..9')
        "exe 'nmap <silent> <leader>' . i . ' :' . i . 'wincmd w<CR>'
    endfor

    let g:leaderGuide_displayfunc = [function("s:display_filter")]
    let g:leaderGuide#map_filter = [function("s:map_filter")]
    let g:leaderGuide_flatten = 1

map <leader>aC :<C-U>Calendar<CR>
map <leader>ft :<C-U>NERDTreeToggle<CR>
map <leader>au :<C-U>UndotreeToggle<CR>
map <leader>sT :<C-U>CtrlSFToggle<CR>
"nmap <leader>ry :<C-U>YRShow<CR>
map <leader>co :<C-U>copen<CR>
map <leader>gs :<C-U>Gstatus<CR>
map <leader>ac :<C-U>Calc<CR>
map <leader>bi :<C-U>TagbarToggle<CR>
map <leader>;; <Plug>NERDCommenterToggle

    call MeetVim#set_leader_keys('ry', 'YRShow', 'Open YRShow')
    call MeetVim#Leader#register_leader('<Space>', 'g:space_map')

    let g:meetvim#leadermap#leftm = {}
    call MeetVim#Leader#register_leader('[', 'g:meetvim#leadermap#leftm')
    let g:meetvim#leadermap#rightm = {}
    call MeetVim#Leader#register_leader(']', 'g:meetvim#leadermap#rightm')
endfunction "}}}

function MeetVim#declare_prefix(key, name) abort "{{{
    call MeetVim#Leader#declare_prefix(g:space_map, a:key, a:name)
endfunction "}}}


function MeetVim#set_leader_keys(key, callmap, ...) abort "{{{
    let l:call_desc = '' 
    if a:0 == 1
        let l:call_desc = a:1
    endif
    call MeetVim#Leader#set_keys('<Space>', g:space_map, a:key, a:callmap, l:call_desc)
endfunction "}}}

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:foldmethod=marker:foldcolumn=4
