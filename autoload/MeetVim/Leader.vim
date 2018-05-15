
if exists('g:loaded_meetvim_leader')
  finish
endif
let g:loaded_meetvim_leader = 1

let s:cpo_save = &cpo
set cpo&vim

function MeetVim#Leader#register_leader(leader, key_map_name) abort "{{{
    let g:leaderGuide_flatten = 1
    call leaderGuide#register_prefix_descriptions(a:leader, a:key_map_name)
    exe 'nnoremap <silent> ' . a:leader . ' :<c-u>LeaderGuide "' . a:leader . '"<CR>'
    exe 'vnoremap <silent> ' . a:leader . ' :<c-u>LeaderGuideVisual "' . a:leader . '"<CR>'
endfunction "}}}

function MeetVim#Leader#declare_prefix(mapdict, key, name, ...) abort "{{{
    let l:key_len = strlen(a:key)
    let l:map = a:mapdict
    let l:key = ''

    let l:remain_len = -1

    if a:0 == 1
        let l:remain_len = strlen(a:1)
    endif

    for i in range(0, l:key_len - 1)
        if l:key != ''
            let l:map = l:map[l:key]
        endif

        if l:remain_len > -1 && l:remain_len <= i 
            let l:key = strcharpart(a:key, i, l:key_len - l:remain_len)
            if (! has_key(l:map, l:key))    
                let l:map[l:key] = {}
            endif
            break
        else 
            let l:key = strcharpart(a:key, i, 1)
            if (! has_key(l:map, l:key))    
                let l:map[l:key] = {}
            endif
        endif
    endfor
    let l:map[l:key]['name'] = a:name
endfunction "}}}

function MeetVim#Leader#set_keys(mapdict, key, callmap, ...) abort "{{{
    let l:call_type = type(a:callmap) 
    let l:call_desc = ''
    let l:call_name = ''

    if a:0 == 1
        let l:call_desc = a:1
    endif

    if l:call_type == v:t_func
        let l:call_name = string(a:callmap)
        let l:call = 'call ' . l:call_name . '()'
    elseif l:call_type == v:t_string
        let l:call_name = a:callmap
        let l:call = l:call_name
    else
        throw 'meetvim_leader_10001 not support type: [' . l:call_type . ']'
    endif
    if l:call_desc == ''
        let l:call_desc = l:call_name
    endif

    let l:key_len = strlen(a:key)
    let l:map = a:mapdict
    let l:key = ''

    for i in range(0, l:key_len - 1)
        if l:key != ''
            let l:map = l:map[l:key]
        endif

        let l:key = strcharpart(a:key, i, 1)
        if (! has_key(l:map, l:key))    
            let l:map[l:key] = {}
        endif
    endfor
    " 需要更细致的错误检查
    
    "let l:call_name = ':exe "' . l:call_name . '"'
    "exe 'nmap <leader>' . a:key . ' ' . l:call_name . '<CR>'
    exe 'nmap <silent> <leader>' . a:key . ' :' . l:call_name . '<CR>'
    let l:map[l:key] = [l:call_name, l:call_desc]
endfunction  "}}}

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:foldmethod=marker
"
