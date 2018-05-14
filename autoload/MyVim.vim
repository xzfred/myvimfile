if exists('g:loaded_myvim')
  finish
endif
let g:loaded_myvim = 1

let s:cpo_save = &cpo
set cpo&vim

function! MyVim#init() abort 
    "let g:_spacevim_mappings_prefixs['[SPC]'] = {'name' : '+SPC prefix'}
    let g:space_map = {}
    "let g:space_map['?'] = ['Unite menu:CustomKeyMaps -input=[SPC]', 'show mappings']
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

    for i in range(1, 9)
        exe 'nmap <leader>' . i . ' :exe "' . i . 'wincmd w"<CR>'
        let g:space_map[i] = ['wincmd', i . ' num windows']
    endfor

    let g:space_map.r.y = ['YRShow', 'open YRShow']

    call leaderGuide#register_prefix_descriptions("<Space>", "g:space_map")
    nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
    vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>
endfunction

function! MyVim#set_leader_keys(key, callmap) abort
    let call_type = type(a:callmap) 
    if call_type == v:t_func
        
    else
        
    endif
endfunction

let &cpo = s:cpo_save
unlet s:cpo_save
