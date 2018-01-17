" vim:set fdm=marker:set syn=vim:

    "{{{ nerdtree MyBundle 'scrooloose/nerdtree'    "文件树
    "-------------------------------------------------------------------------------------
    let NERDChristmasTree=1
    "----------------------------------------------------------------------------------}}}

    "{{{ 'Raimondi/delimitMate'                     "括号自动补全
    "-------------------------------------------------------------------------------------
    let delimitMate_matchpairs = "(:),[:],{:}"
    "let delimitMate_quotes = "' \" `"
    let delimitMate_expand_cr = 1
    let delimitMate_expand_space = 0
    let delimitMate_jump_expansion = 0
    let delimitMate_balance_matchpairs = 1
    let delimitMate_expand_inside_quotes = 0
    "----------------------------------------------------------------------------------}}}

    "{{{ Konfekt/FastFold                     "括号自动补全
    "-------------------------------------------------------------------------------------
    let g:tex_fold_enabled=1
    let g:vimsyn_folding='af'
    let g:xml_syntax_folding = 1
    let g:php_folding = 1
    let g:perl_fold = 1
    let g:vimsyn_folding = 1
    let g:vimwiki_folding = 1
    "----------------------------------------------------------------------------------}}}
     
    "{{{ 
    "-------------------------------------------------------------------------------------
    "----------------------------------------------------------------------------------}}}

    "{{{ 'Shougo/neomru.vim'
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'mbbill/undotree'                                    "undo 撤销树
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'bling/vim-airline'
    "-------------------------------------------------------------------------------------
    let g:airline_theme='onedark'
    let g:airline#extensions#whitespace#enabled = 0
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#syntastic#enabled = 1
    let g:airline_section_y='[%{(&fenc=="")?&enc:&fenc}%{(&bomb?",BOM":"")}] %{strftime("%m-%d %H:%M:%S")}'
    let g:airline_section_z='%-16.(%{winnr()}:%n#%L:%l,%c%V,%P%)'
    set statusline=%<[%n]%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%L:%l,%c%V%)\ %P " 状态行格式
    "let g:airline#extensions#tabline#enabled = 1
    "let g:airline#extensions#tabline#show_tab_nr = 1
    "let g:airline#extensions#tabline#buffer_idx_mode = 1
    "nmap <leader>1 <Plug>AirlineSelectTab1
    "nmap <leader>2 <Plug>AirlineSelectTab2
    "nmap <leader>3 <Plug>AirlineSelectTab3
    "nmap <leader>4 <Plug>AirlineSelectTab4
    "nmap <leader>5 <Plug>AirlineSelectTab5
    "nmap <leader>6 <Plug>AirlineSelectTab6
    "nmap <leader>7 <Plug>AirlineSelectTab7
    "nmap <leader>8 <Plug>AirlineSelectTab8
    "nmap <leader>9 <Plug>AirlineSelectTab9
    "nmap <leader>- <Plug>AirlineSelectPrevTab
    "nmap <leader>+ <Plug>AirlineSelectNextTab
    "au BufNewFile,BufRead *.* AirlineTheme  dark
    "----------------------------------------------------------------------------------}}}

    "{{{ 'gregsexton/VimCalc'
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'tpope/vim-repeat'                         "对插件行为提供重复操作'.'
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'terryma/vim-multiple-cursors'             "多光标操作
    "-------------------------------------------------------------------------------------
    let g:multi_cursor_use_default_mapping=0
    let g:multi_cursor_start_key='<C-g><C-n>'
    let g:multi_cursor_next_key= '<C-n>'
    let g:multi_cursor_prev_key= '<C-p>'
    let g:multi_cursor_skip_key= '<C-x>'
    let g:multi_cursor_quit_key= '<Esc>'
    "----------------------------------------------------------------------------------}}}

    "{{{ 'tpope/vim-surround'                       "成对修改引号等
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'Shougo/vimshell.vim'
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'Shougo/vimproc.vim'
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'Lokaltog/vim-easymotion'                  "通过使用单字母标签，提供快速范围移动，默认用<Leader><Leader> vim 指令
    "-------------------------------------------------------------------------------------
    
    "----------------------------------------------------------------------------------}}}

    "{{{ 'VisIncr'
    "-------------------------------------------------------------------------------------
    "----------------------------------------------------------------------------------}}}

    "{{{ 'junegunn/vim-easy-align'
    "-------------------------------------------------------------------------------------
    let g:easy_align_delimiters = {
                \ '>': { 'pattern': '>>\|=>\|>' },
                \ '/': {
                \     'pattern':         '//\+\|/\*\|\*/',
                \     'delimiter_align': 'l',
                \     'ignore_groups':   ['!Comment'] },
                \ ']': {
                \     'pattern':       '[[\]]',
                \     'left_margin':   0,
                \     'right_margin':  0,
                \     'stick_to_left': 0
                \   },
                \ ')': {
                \     'pattern':       '[()]',
                \     'left_margin':   0,
                \     'right_margin':  0,
                \     'stick_to_left': 0
                \   },
                \ 'd': {
                \     'pattern':      ' \(\S\+\s*[;=]\)\@=',
                \     'left_margin':  0,
                \     'right_margin': 0
                \   }
                \ }
    "----------------------------------------------------------------------------------}}}

    "{{{ 'luochen1990/rainbow'                      "增强版括号高亮 
    "-------------------------------------------------------------------------------------
    let g:rainbow_active = 1
    let g:rainbow_conf = {
                \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
                \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
                \   'operators': '_,_',
                \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
                \   'separately': {
                \       '*': {},
                \       'tex': {
                \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
                \       },
                \       'lisp': {
                \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
                \       },
                \       'vim': {
                \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
                \       },
                \       'html': {
                \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
                \       },
                \       'css': 0,
                \		'php': {
                \			'parentheses': [
                \               'start=/(/ end=/)/ containedin=@phpClTop contains=@phpClTop', 
                \               'start=/\[/ end=/\]/ containedin=@phpClTop contains=@phpClTop', 
                \           ]
                \		},
                \   }
                \}
                "\               'start=/{/ end=/}/ containedin=@phpClTop contains=@phpClTop',
                "\		'php': {
                "\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold', 'start=/(/ end=/)/ containedin=@htmlPreproc contains=@phpClTop', 'start=/\[/ end=/\]/ containedin=@htmlPreproc contains=@phpClTop', 'start=/{/ end=/}/ containedin=@htmlPreproc contains=@phpClTop'],
                \       },
    "----------------------------------------------------------------------------------}}}
     
    "{{{ showmark 显示位置标记  
    "-------------------------------------------------------------------------------------
    "amenu &Plugin.showmark.ShowMarksPlaceMark<TAB><Leader>mm :ShowMarksPlaceMark<CR>
    "amenu &Plugin.showmark.ShowMarksClearAll<TAB><Leader>ma  :ShowMarksClearAll<CR>
    "amenu &Plugin.showmark.ShowMarksClearMark<TAB><Leader>mh :ShowMarksClearMark<CR>
    "amenu &Plugin.showmark.ShowMarksOn<TAB><Leader>mo        :ShowMarksOn<CR>
    "amenu &Plugin.showmark.ShowMarksToggle<TAB><Leader>mt    :ShowMarksToggle<CR>
    "----------------------------------------------------------------------------------}}}

    "{{{ mark扩展多单词的标记、高亮插件  
    "-------------------------------------------------------------------------------------
    "let g:mwDefaultHighlightingPalette = 'extended'
    nmap <silent> <Leader>ht <Plug>MarkToggle
    nmap <silent> <Leader>ha <Plug>MarkAllClear
    nmap <silent> <Leader>hm <Plug>MarkSet
    vmap <silent> <Leader>hm <Plug>MarkSet
    nmap <silent> <Leader>hc <Plug>MarkClear
    nmap <silent> <Leader>hN <Plug>MarkSearchCurrentPrev
    nmap <silent> <Leader>hn <Plug>MarkSearchCurrentNext
    nmap <silent> <Leader>hf <Plug>MarkSearchAnyNext
    nmap <silent> <Leader>hF <Plug>MarkSearchAnyPrev
    nmap <silent> <Leader>sr :SearchReset<CR>

    amenu &Plugin.mark.MarkToggle<TAB><Leader>ht   <Plug>MarkToggle
    amenu &Plugin.mark.MarkAllClear<TAB><Leader>ha <Plug>MarkAllClear

    amenu &Plugin.mark.MarkSet<TAB><Leader>hm   :MarkSet<CR>
    nmenu &Plugin.mark.MarkClear<TAB><Leader>hc    :MarkClear<CR>

    vmenu &Plugin.mark.MarkSearchAnyPrev<TAB><Leader>hF     :MarkSearchAnyPrev<CR>
    amenu &Plugin.mark.MarkSearchAnyNext<TAB><Leader>hf     :MarkSearchAnyNext<CR>
    amenu &Plugin.mark.MarkSearchCurrentPrev<TAB><Leader>hN :MarkSearchCurrentPrev<CR>
    amenu &Plugin.mark.MarkSearchCurrentNext<TAB><Leader>hn :MarkSearchCurrentNext<CR>
    amenu &Plugin.mark.--search-- :
    amenu &Plugin.mark.Search<TAB><Leader>*    * :execute ':Search \<' . expand('<cword>') . '\>'<CR>
    amenu &Plugin.mark.SearchNext<TAB><Leader>sn  :call <SID>SearchNext(0)<CR>
    amenu &Plugin.mark.SearchPerv<TAB><Leader>sN  :call <SID>SearchNext(1)<CR>
    amenu &Plugin.mark.SearchReset<TAB><Leader>sr  :SearchReset<CR>
    "----------------------------------------------------------------------------------}}}

    "{{{ surround对于单词、句子两端增、删、减、改成对符号  
    "-------------------------------------------------------------------------------------
    amenu &Plugin.Surround.VSurround<TAB>S    <Plug>VSurround
    amenu &Plugin.Surround.Csurround<TAB>cs   <Plug>Csurround
    amenu &Plugin.Surround.Dsurround<TAB>ds   <Plug>Dsurround
    amenu &Plugin.Surround.Ysurround<TAB>ysW  <Plug>Ysurround
    amenu &Plugin.Surround.VgSurround<TAB>gS  <Plug>VgSurround
    amenu &Plugin.Surround.Vsurround<TAB>s    <Plug>Vsurround
    amenu &Plugin.Surround.YSurround<TAB>yS   <Plug>YSurround
    "----------------------------------------------------------------------------------}}}
                                                                                          
    "{{{ vim-scripts/YankRing.vim yankring 剪贴板
    "-------------------------------------------------------------------------------------
    let g:yankring_window_use_right = 1
    "let g:yankring_history_dir = '$VIMFILES'
    "let g:yankring_replace_n_pkey = '<m-p>'
    "let g:yankring_replace_n_nkey = '<m-n>'
    amenu &Plugin.yankring.YRShow<TAB>   :YRShow<CR>
    
    "----------------------------------------------------------------------------------}}}

    "{{{ nathanaelkane/vim-indent-guides.git        "可视化对齐线
    "-------------------------------------------------------------------------------------
    let g:indent_guides_guide_size=1
    let g:indent_guides_start_level=1
    if has("gui_running")
        let g:indent_guides_enable_on_vim_startup=1
    endif
    nmap <silent> <Leader>ig <Plug>IndentGuidesToggle
    "----------------------------------------------------------------------------------}}}

    "{{{ 个人
    "日历，日记插件 calendar.vim
    "'vimwiki/vimwiki'
    "'xolox/vim-notes'                          "简单实用的笔记插件
    "'xolox/vim-misc'                           "自动读取vim脚本
    "-------------------------------------------------------------------------------------
    let g:vimwiki_menu="Plugin.Vimwiki"
    let g:vimwiki_list=[
                \ {'path': $VIMDATA . '/mywiki', 'path_html': $VIMDATA . '/my/mywiki_html', 'template_path': $VIMDATA . '/my/wiki_template', 'template_default': 'def_template', 'template_ext': '.html'} ,
                \ {'path': $VIMDATA . '/GTD', 'path_html': $VIMDATA . '/my/GTD_html', 'template_path': $VIMDATA . '/my/wiki_template', 'template_default': 'def_template', 'template_ext': '.html'} ,
                \ ]
    let g:calendar_diary = $VIMDATA.'/diary' " 日记保存的目录
    let g:vimwiki_folding = 'syntax'

    let g:tagbar_type_vimwiki = {
          \   'ctagstype':'vimwiki'
          \ , 'kinds':['h:header']
          \ , 'sro':'&&&'
          \ , 'kind2scope':{'h':'header'}
          \ , 'sort':0
          \ , 'ctagsbin':'~/my/mycmd/vwtags.py'
          \ , 'ctagsargs': 'default'
          \ }
    "----------------------------------------------------------------------------------}}}

    "let g:UltiSnipsSnippetsDir = $VIMFILES . "/ultisnips"
    let g:UltiSnipsEditSplit = "horizontal"
    "{{{ 自动完成和代码片段
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'youcompleteme')
        execute pathogen#infect('bnd-ymc/{}')
        " 'Valloric/YouCompleteMe'
        " 'SirVer/ultisnips'
        " 'honza/vim-snippets'

        "{{{ ultisnips
        "-------------------------------------------------------------------------------------
        "let g:UltiSnipsExpandTrigger = "<c-g><c-k>"
        "let g:UltiSnipsJumpForwardTrigger = "<Tab>"
        "let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
        "let g:UltiSnipsSnippetDirectories=["UltiSnips"]
        "let g:UltiSnipsListSnippets="<c-e>"

        "let g:ulti_expand_or_jump_res = 0
        "let g:ulti_expand_res = 0 
        function! Ulti_ExpandOrJump_and_getRes()
            "call UltiSnips#ExpandSnippet()
            if pumvisible()
                return "\<C-N>"
            else
                call UltiSnips#ExpandSnippetOrJump()
                if g:ulti_expand_or_jump_res == 0 
                    return "\<TAB>"
                endif
                return ""
            endif
        endfunction
        "inoremap <expr><TAB> Ulti_ExpandOrJump_and_getRes()
        "inoremap <silent> <Tab> <C-r>=Ulti_ExpandOrJump_and_getRes()<cr>
        "snoremap <silent> <Tab> <Esc>:call Ulti_ExpandOrJump_and_getRes()<cr>
        "xnoremap <silent> <Tab> :call UltiSnips#SaveLastVisualSelection()<cr>gvs
        "inoremap <expr> <CR>       pumvisible() ? "\<esc>a" : "\<CR>"	
        "----------------------------------------------------------------------------------}}}
        "{{{ 超级智能完成 YouCompleteYou 
        "-------------------------------------------------------------------------------------
        set completeopt=menu ",noinsert
        "autocmd InsertLeave * if pumvisible() == 0|pclose|endif    "离开插入模式后自动关闭预览窗口"
        let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
        let g:ycm_min_num_of_chars_for_completion = 1
        let g:ycm_filepath_completion_use_working_dir = 1
        let g:ycm_autoclose_preview_window_after_completion = 0
        let g:ycm_autoclose_preview_window_after_insertion = 0
        let g:ycm_add_preview_to_completeopt = 0
        let g:ycm_confirm_extra_conf = 0
        let g:ycm_complete_in_strings = 1
        let g:ycm_complete_in_comments = 1
        let g:ycm_collect_identifiers_from_comments_and_strings = 1
        let g:ycm_collect_identifiers_from_tags_files = 1
        let g:ycm_seed_identifiers_with_syntax = 1
        let g:ycm_key_list_select_completion = ['<Down>']
        let g:ycm_key_list_previous_completion = ['<Up>']
        let g:ycm_cache_omnifunc=1
        let g:ycm_key_detailed_diagnostics = '<leader>yd'
        "let g:ycm_key_invoke_completion = '<nul>'
        let g:ycm_log_level = 'error'
        let g:ycm_filetype_blacklist = {
                    \ 'tagbar' : 1,
                    \ 'nerdtree' : 1,
                    \ 'qf' : 1,
                    \ 'unite' : 1,
                    \ 'pandoc' : 1,
                    \ 'infolog' : 1,
                    \ 'ctrlsf' : 1,
                    \ 'mail' : 1
                    \}
                    "\ 'notes' : 1,
                    "\ 'markdown' : 1,
                    "\ 'text' : 1,
                    "\ 'vimwiki' : 1,
        let g:ycm_semantic_triggers =  {
                    \   'c' : ['->', '.'],
                    \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
                    \             're!\[.*\]\s'],
                    \   'ocaml' : ['.', '#'],
                    \   'cpp,objcpp' : ['->', '.', '::'],
                    \   'perl' : ['->'],
                    \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
                    \   'ruby' : ['.', '::'],
                    \   'lua' : ['.', ':'],
                    \   'erlang' : [':'],
                    \   'css': [ 're!^\s{4}', 're!:\s+'],
                    \   'html': [ '</' ],
                    \   'php' : ['->', '::'],
                    \ }
        let g:ycm_filetype_specific_completion_to_disable = { }
        nnoremap <leader>gi :YcmCompleter GoToInclude<CR> 
        nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR> 
        nnoremap <leader>gf :YcmCompleter GoToDefinition<CR> 
        nnoremap <leader>gg :YcmCompleter GoTo<CR> 
        nnoremap <leader>yc :YcmForceCompileAndDiagnostics<CR> 

        autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
        autocmd FileType html,markdown,smarty3 setlocal omnifunc=htmlcomplete#CompleteTags
        "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
        autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
        autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
        autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
        "----------------------------------------------------------------------------------}}}
    elseif count(g:my_bundle_groups, 'neocomplcache')
        execute pathogen#infect('bnd-neocc/{}')
        " 'Shougo/neocomplcache'
        " 'Shougo/neosnippet'
        " 'Shougo/neosnippet-snippets'
        " 'honza/vim-snippets'
    elseif count(g:my_bundle_groups, 'neocomplete')
        execute pathogen#infect('bnd-neo/{}')
        " 'Shougo/neocomplete.vim.git'
        " 'Shougo/neosnippet'
        " 'Shougo/neosnippet-snippets'
        " 'honza/vim-snippets'

        " For snippet_complete marker.
        if has('conceal')
          set conceallevel=2 concealcursor=i
        endif

    " Enable snipMate compatibility feature.
    " let g:neosnippet#enable_snipmate_compatibility = 1
        "{{{  neocomplete
        "-------------------------------------------------------------------------------------
            set completeopt=menuone
        let g:neocomplete#auto_completion_start_length     = 1
        let g:neocomplete#delimiter_patterns               = {'php': ['->', '::', '\']}
        let g:neocomplete#enable_auto_close_preview        = 2
        let g:neocomplete#enable_auto_delimiter            = 1
        let g:neocomplete#lock_buffer_name_pattern         = '\.log\|.*quickrun.*\|.jax'
        let g:neocomplete#max_keyword_width                = 65
        let g:neocomplete#max_list                         = 25
        "let g:neocomplete#min_keyword_length               = 3
        let g:neocomplete#sources#buffer#max_keyword_width = 40
        "let g:neocomplete#sources#dictionary#dictionaries  = {'_': '', 'php': $HOME .'/.vim/dict/php.dict'}
        let g:neocomplete#enable_camel_case     = 1
        let g:neocomplete#use_vimproc = 1
        
        "let g:neocomplete#fallback_mappings = ["\<C-x>\<C-o>", "\<C-x>\<C-n>"]

        "neoinclude.vim
        "let g:neoinclude#exts          = {'php': ['php', 'inc', 'tpl']}
        "let g:neoinclude#max_processes = 5

            let g:acp_enableAtStartup = 0
            let g:neocomplete#enable_at_startup = 1
            let g:neocomplete#enable_ignore_case = 1
            let g:neocomplete#enable_smart_case = 1
            let g:neocomplete#sources#syntax#min_keyword_length = 1
            "let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
            let g:neocomplete#enable_fuzzy_completion = 1
            let g:neocomplete#enable_auto_select = 0
            let g:neocomplete#auto_complete_delay = 250

            call neocomplete#set_default_matchers('matcher_fuzzy')
            " Define dictionary.
            let g:neocomplete#sources#dictionary#dictionaries = {
                        \ 'default' : '',
                        \ 'vimshell' : $HOME.'/.vimshell_hist',
                        \ 'scheme' : $HOME.'/.gosh_completions'
                        \ }

            " Define keyword.
            if !exists('g:neocomplete#keyword_patterns')
                let g:neocomplete#keyword_patterns = {}
            endif
            let g:neocomplete#keyword_patterns['default'] = '\h\w*'
            "let g:neocomplete#sources#tags#cache_limit_size = 50000000

            " Plugin key-mappings.
            inoremap <expr><C-g><C-u>     neocomplete#undo_completion()
            inoremap <expr><C-l>     neocomplete#complete_common_string()

            " Recommended key-mappings.
            " <CR>: close popup and save indent.
            "inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
            function! s:my_cr_function()
                "return neocomplete#close_popup() . "\<CR>"
                " For no inserting <CR> key.
                return pumvisible() ? neocomplete#close_popup() : "\<CR>"
            endfunction
            
            imap <expr> <CR> pumvisible() ? neocomplete#close_popup() : '<Plug>delimitMateCR'
            " <TAB>: completion.
            "inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
            " <C-h>, <BS>: close popup and delete backword char.
            "inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
            "inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
            inoremap <expr><C-y>  neocomplete#close_popup()
            inoremap <expr><C-e>  neocomplete#cancel_popup()
            " Close popup by <Space>.
            "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

            if !exists('g:neocomplete#sources')
                "let g:neocomplete#sources = {}
            endif
            "let g:neocomplete#sources._ = ['Ultisnips', 'file', 'buffer']
            "let g:neocomplete#sources.vim = ['Ultisnips', 'vim', 'file', 'dictionary', 'buffer', 'omni', 'member', 'tag']
            let g:neocomplete#sources.php = ['Ultisnips', 'file', 'omni', 'member', 'buffer', 'php']

            " Enable omni completion.
            autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
            autocmd FileType html,markdown,smarty3 setlocal omnifunc=htmlcomplete#CompleteTags
            "autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
            autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
            autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
            autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
            "autocmd FileType php setlocal omnifunc=

            " Enable heavy omni completion.
            if !exists('g:neocomplete#sources#omni#input_patterns')
                let g:neocomplete#sources#omni#input_patterns = {}
            endif
            if !exists('g:neocomplete#force_omni_input_patterns')
                let g:neocomplete#force_omni_input_patterns = {}
            endif
            let g:neocomplete#sources#omni#input_patterns.javascript = '\h\w*\|[^. \t]\.\w*'
            let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'
            let g:neocomplete#sources#omni#input_patterns.rust = '[^.[:digit:] *\t]\%(\.\|\::\)\%(\h\w*\)\?'
            "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
            "let g:neocomplete#sources#omni#input_patterns.c =
            "\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?'
            "let g:neocomplete#sources#omni#input_patterns.cpp =
            "\ '[^.[:digit:] *\t]\%(\.\|->\)\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

            " For perlomni.vim setting.
            " https://github.com/c9s/perlomni.vim
            "let g:neocomplete#sources#omni#input_patterns.perl =
                        "\ '[^. \t]->\%(\h\w*\)\?\|\h\w*::\%(\h\w*\)\?'

            " For smart TAB completion.
            
            " inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
            "         \ <SID>check_back_space() ? "\<TAB>" :
            "         \ neocomplete#start_manual_complete()
            function! s:check_back_space() "{{{
                call UltiSnips#ExpandSnippetOrJump()
                if g:ulti_expand_or_jump_res == 0 
                    return "\<TAB>"
                endif

                let col = col('.') - 1
                return !col || getline('.')[col - 1]  =~ '\s'
            endfunction "}}}
        "----------------------------------------------------------------------------------}}}
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ 文件操作
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'unite')  
        " 'Shougo/unite.vim'
        "{{{ unite 缓冲区方式文件打开
        "-------------------------------------------------------------------------------------
        " Start insert.
        "let g:unite_enable_start_insert = 1
        "let g:unite_enable_short_source_names = 1
        "let g:unite_winheight = 10
        "let g:unite_split_rule = 'botright'
        
        "let g:unite_source_file_rec_max_cache_files = 50000
        let g:unite_source_rec_async_command=
                    \ ['ag', '--follow', '--nocolor', '--nogroup',
                    \ '--ignore',  '''vendor''',
                    \  '--hidden', '-g', '']
                        "\ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'' --ignore ''vendor'''
        "let g:unite_source_grep_command='ag'
        "let g:unite_source_grep_default_opts='-i --line-numbers --nocolor --nogroup --hidden -p /Users/fred/.agignore'

        " To track long mru history.
        let g:unite_source_file_mru_long_limit = 5000
        let g:unite_source_directory_mru_long_limit = 5000
        let g:unite_source_rec_max_cache_files=50000

        " Prompt choices.
        "let g:unite_prompt = '❫ '
        let g:unite_prompt = '» '

        let g:unite_source_file_mru_limit = 1000
        let g:unite_cursor_line_highlight = 'TabLineSel'
        let g:unite_abbr_highlight = 'TabLine'
        " For optimize.
        let g:unite_source_file_mru_filename_format = ''

        function! UltiSnipsCallUnite()
            Unite -start-insert -immediately -no-empty ultisnips
            return ''
        endfunction
   
        inoremap <silent> <C-G><C-U> <C-R>=(pumvisible()? "\<LT>C-E>":"")<CR><C-R>=UltiSnipsCallUnite()<CR>
        call unite#filters#matcher_default#use(['matcher_fuzzy'])

        call unite#custom#profile('default', 'context', {
                    \'here': 1,
                    \'winheight': 30
                    \})
         
        nnoremap <silent> <Leader>fob  :<C-u>Unite -start-insert buffer<CR>
        nnoremap <silent> <Leader>foB  :<C-u>Unite -start-insert buffer_tab<CR>
        nnoremap <silent> <Leader>bB  :<C-u>Unite -start-insert buffer_tab<CR>
        nnoremap <silent> <Leader>bb  :<C-u>Unite -start-insert buffer<CR>

        nnoremap <silent> <Leader>fof  :<C-u>Unite -start-insert file_rec/async<CR>
        nnoremap <silent> <Leader>foF  :<C-u>Unite -start-insert file_point<CR>
        nnoremap <silent> <Leader>fmf  :<C-u>Unite -start-insert file_mru<CR>
        nnoremap <silent> <Leader>fr  :<C-u>Unite -start-insert file_mru<CR>
        nnoremap <silent> <Leader>ff  :<C-u>Unite -start-insert file_rec/async<CR>
        nnoremap <silent> <Leader>pf  :<C-u>Unite -start-insert file_rec/async<CR>

        nnoremap <silent> <Leader>foc  :<C-u>Unite -start-insert command<CR>
        nnoremap <silent> <Leader>fot  :<C-u>Unite -start-insert tab<CR>
        nnoremap <silent> <Leader>for  :<C-u>Unite -start-insert register<CR>
        nnoremap <silent> <Leader>foa  :<C-u>Unite -start-insert file_rec<CR>
        nnoremap <silent> <Leader>fod  :<C-u>Unite -start-insert -default-action=cd directory<CR>
        nnoremap <silent> <Leader>foj  :<C-u>Unite -start-insert jump<CR>
        nnoremap <silent> <Leader>foJ  :<C-u>Unite -start-insert jump_point<CR>
        nnoremap <silent> <Leader>fol  :<C-u>Unite -start-insert line<CR>
        nnoremap <silent> <Leader>fom  :<C-u>Unite -start-insert mapping<CR>
        nnoremap <silent> <Leader>fmd  :<C-u>Unite -start-insert -default-action=cd directory_mru<CR>
        nnoremap <silent> <Leader>fbf  :<C-u>Unite -start-insert bookmark<CR>
        nnoremap <silent> <Leader>fab  :<C-u>UniteBookmarkAdd<CR>
        nnoremap  <Leader>fos  :<C-u>Unite -start-insert source<CR>

        nnoremap <silent> <Leader>sw :<C-u>UniteWithCursorWord -start-insert<CR>
        nnoremap <silent> <Leader>jl  :<C-u>Unite -start-insert outline<CR>
        nnoremap <silent> <Leader>jt  :<C-u>Unite -start-insert tag<CR>
        nnoremap <silent> <Leader>jft  :<C-u>Unite -start-insert tag:%<CR>
        "autocmd BufEnter *
        "\   if empty(&buftype)
        "\|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -start-insert -immediately tag<CR>
        "\|  endif
        let g:unite_source_tag_max_fname_length = 40
        nnoremap <silent> <Leader>hk  :<C-u>Unite -start-insert help<CR>
        nnoremap <silent> <Leader>te  :<C-u>Unite -start-insert emoji<CR>
        nnoremap <silent> <Leader>jm  :<C-u>Unite -start-insert mark<CR>

        nnoremap <silent>  <Leader>uof  :<C-u>Unite file<CR>
        nnoremap <silent>  <Leader>uob  :<C-u>Unite buffer<CR>
        nnoremap <silent>  <Leader>uoc  :<C-u>Unite change<CR>
        nnoremap <silent>  <Leader>uod  :<C-u>Unite directory<CR>
        nnoremap <silent>  <Leader>umf  :<C-u>Unite file_mru<CR>
        nnoremap <silent>  <Leader>uc  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
        nnoremap <silent>  <Leader>ub  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
        nnoremap <silent>  <Leader>ur  :<C-u>Unite -buffer-name=register register<CR>
        "nnoremap <silent>  <Leader>uo  :<C-u>Unite outline<CR>
        nnoremap <silent>  <Leader>uf  :<C-u>Unite -buffer-name=resume resume<CR>
        nnoremap <silent>  <Leader>ud  :<C-u>Unite -buffer-name=files -default-action=lcd directory_mru<CR>
        nnoremap <silent>  <Leader>uma :<C-u>Unite mapping<CR>
        nnoremap <silent>  <Leader>ume :<C-u>Unite output:message<CR>
        nnoremap <silent>  <Leader>us  :<C-u>Unite -buffer-name=files -no-split jump_point file_point buffer_tab file_rec:! file file/new file_mru<CR>
        nnoremap  <Leader>uu  :<C-u>Unite source<CR>

        if executable('hw')
            " Use hw (highway)
            " https://github.com/tkengo/highway
            let g:unite_source_grep_command = 'hw'
            let g:unite_source_grep_default_opts = '--no-group --no-color'
            let g:unite_source_grep_recursive_opt = ''
        elseif executable('ag')
            " Use ag (the silver searcher)
            " https://github.com/ggreer/the_silver_searcher
            let g:unite_source_grep_command = 'ag'
            let g:unite_source_grep_default_opts =
                        \ '-i --vimgrep --hidden --ignore ' .
                        \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'' --ignore ''vendor'''
            let g:unite_source_grep_recursive_opt = ''
        elseif executable('pt')
            " Use pt (the platinum searcher)
            " https://github.com/monochromegane/the_platinum_searcher
            let g:unite_source_grep_command = 'pt'
            let g:unite_source_grep_default_opts = '--nogroup --nocolor'
            let g:unite_source_grep_recursive_opt = ''
        elseif executable('ack-grep')
            " Use ack
            " http://beyondgrep.com/
            let g:unite_source_grep_command = 'ack-grep'
            let g:unite_source_grep_default_opts =
                        \ '-i --no-heading --no-color -k -H'
            let g:unite_source_grep_recursive_opt = ''
        elseif executable('jvgrep')
            " Use jvgrep
            " https://github.com/mattn/jvgrep
            let g:unite_source_grep_command = 'jvgrep'
            let g:unite_source_grep_default_opts =
                        \ '-i --exclude ''\.(git|svn|hg|bzr)'''
            let g:unite_source_grep_recursive_opt = '-R'
        endif

        "call unite#custom#source('file,file/new,buffer,file_rec', 'matchers', 'matcher_fuzzy')
        autocmd FileType unite call s:unite_my_settings()
        "{{{
        function! s:unite_my_settings()
          " Overwrite settings.
        endfunction                     
        "}}}
        "----------------------------------------------------------------------------------}}}
    endif 
    "----------------------------------------------------------------------------------}}}

    "{{{ 版本控制
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'fugitive')
        " 'tpope/vim-fugitive'                      "git 支持
    elseif count(g:my_bundle_groups, 'vcs')
        " 'git://repo.or.cz/vcscommand'
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ prject vim-project
    "-------------------------------------------------------------------------------------
        nnoremap <silent>  <Leader>pr :<C-u>ProjectRootCD<CR>
    "----------------------------------------------------------------------------------}}}

    "{{{ 通用程序开发
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'programming')
        "MyBundle 'mattn/webapi-vim'
        "MyBundle 'mattn/gist-vim'
        "MyBundle 'tpope/vim-commentary'
        "MyBundle 'godlygeek/tabular'
        "MyBundle 'scrooloose/nerdcommenter'                 "代码注释 
        "MyBundle 'dyng/ctrlsf.vim'                          "快速代码搜索
        "MyBundle 'terhechte/syntastic'
        "MyBundle 'scrooloose/syntastic'
        "MyBundle 'jelera/vim-javascript-syntax'
        "MyBundle 'mileszs/ack.vim'
        "MyBundle 'dkprice/vim-easygrep'
        "MyBundle 'majutsushi/tagbar'                        "更好TList

        nmap <silent> <Leader>d <Plug>DashSearch
        nmap <silent> <Leader>dw <Plug>DashGlobalSearch

        "{{{ 代码搜索
        "-------------------------------------------------------------------------------------
        let g:ctrlsf_ackprg = 'ag'
        let g:ctrlsf_ignore_dir = []
        let g:ctrlsf_extra_backend_args = {
                    \ 'ag': '--ignore tags'
                    \ }

        "----------------------------------------------------------------------------------}}}
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ 快速代码片段输入和文件模板插件 tSkeleton
    "-------------------------------------------------------------------------------------
    "let g:tskelUserName     = 'xzfred'
    "let g:tskelUserEmail    = 'xzfred@gmail.com'
    "let g:tskelLicense      = '2009 fengone.com'
    "let g:tskelDateFormat   = "%Y-%m-%d %X"
    "let g:tskelMapInsert    = '<c-g><c-o>'
    "let g:tskelBitGroup_php = ['php']
    "let g:tskelMapGoToNextTag = 1
    "----------------------------------------------------------------------------------}}}
    
"{{{ 特定语言场景支持
    "{{{ c/c++
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'cpp')
        "autocmd FileType cpp :set tags+=/usr/include/tags,/usr/include/c++/4.0/tags
        "autocmd FileType c :set tags+=/usr/include/tags

        "autocmd FileType cpp :set tags+=$VIMFILES/tags/w_stl,$VIMFILES/tags/w_cstd
        "function! SetCpp()
        "endfunction
        nnoremap <leader>gh :A<CR> 
        let g:tagbar_type_cpp = {
                    \ 'kinds' : [
                    \ 'c:classes:0:1',
                    \ 'd:macros:0:1',
                    \ 'e:enumerators:0:0', 
                    \ 'f:functions:0:1',
                    \ 'g:enumeration:0:1',
                    \ 'l:local:0:1',
                    \ 'm:members:0:1',
                    \ 'n:namespaces:0:1',
                    \ 'p:functions_prototypes:0:1',
                    \ 's:structs:0:1',
                    \ 't:typedefs:0:1',
                    \ 'u:unions:0:1',
                    \ 'v:global:0:1',
                    \ 'x:external:0:1'
                    \ ],
                    \ 'sro'        : '::',
                    \ 'kind2scope' : {
                    \ 'g' : 'enum',
                    \ 'n' : 'namespace',
                    \ 'c' : 'class',
                    \ 's' : 'struct',
                    \ 'u' : 'union'
                    \ },
                    \ 'scope2kind' : {
                    \ 'enum'      : 'g',
                    \ 'namespace' : 'n',
                    \ 'class'     : 'c',
                    \ 'struct'    : 's',
                    \ 'union'     : 'u'
                    \ }
                    \ }
        
    endif
    " 设置 pullproto.pl 脚本路径
    let g:protodefprotogetter='~/.vim/bnd-code/vim-protodef/pullproto.pl'
    " 成员函数的实现顺序与声明顺序一致
    let g:disable_protodef_sorting=1
    "----------------------------------------------------------------------------------}}}

    "{{{ lua
    "-------------------------------------------------------------------------------------
    " This sets the default value for all buffers.
    let g:lua_compiler_name = '/usr/local/bin/luac'
    let g:lua_check_syntax = 1
    let g:lua_complete_omni = 1   
    "----------------------------------------------------------------------------------}}}

    "{{{ rust
    "-------------------------------------------------------------------------------------
    let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}
    "----------------------------------------------------------------------------------}}}


    "{{{ objective-c clang completed
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'objc')
        " Show sidebar signs.
        let g:syntastic_enable_signs=1
        " Read the clang complete file
        let g:syntastic_objc_config_file = '.clang_complete'
        " Status line configuration
        "set statusline+=%#warningmsg#  " Add Error ruler.
        "set statusline+=%{SyntasticStatuslineFlag()}
        "set statusline+=%*
        nnoremap <silent> ` :Errors<CR>

        "{{{ 更好的tlist tagbar objc 支持
        "-------------------------------------------------------------------------------------
        if executable('objctags')
            let objctags_definitions = {
                        \ 'ctagsbin': 'objctags',
                        \ 'ctagsargs': '-f -',
                        \ 'kinds': [
                        \ 'd:macros',
                        \ 't:typedefs',
                        \ 'p:prototypes',
                        \ 'v:variables',
                        \ 'g:enums',
                        \ 'e:enumerators',
                        \ 'n:namespaces',
                        \ 'c:classes',
                        \ 's:structs',
                        \ 'u:unions',
                        \ 'f:functions',
                        \ 'm:members',
                        \ 'a:interfaces',
                        \ 'A:implementations',
                        \ 'h:categories',
                        \ 'H:categoryimpls',
                        \ 'j:protocols',
                        \ 'J:properties',
                        \ 'k:methods'
                        \ ],
                        \ 'sro': '::',
                        \ 'kind2scope': {
                        \ 'g': 'enum',
                        \ 'n': 'namespace',
                        \ 'c': 'class',
                        \ 's': 'struct',
                        \ 'u': 'union',
                        \ 'a': 'interface',
                        \ 'A': 'implementation',
                        \ 'h': 'category',
                        \ 'H': 'categoryimpl',
                        \ 'j': 'protocol'
                        \ },
                        \ 'scope2kind': {
                        \ 'enum': 'g',
                        \ 'namespace': 'n',
                        \ 'class': 'c',
                        \ 'struct': 's',
                        \ 'union': 'u',
                        \ 'interface': 'a',
                        \ 'implementation': 'A',
                        \ 'category': 'h',
                        \ 'categoryimpl': 'H',
                        \ 'protocol': 'j'
                        \ },
                        \ }
            let g:tagbar_type_c = deepcopy(objctags_definitions)
            let g:tagbar_type_cpp = deepcopy(objctags_definitions)
            let g:tagbar_type_objc = deepcopy(objctags_definitions)
            let g:tagbar_type_objcpp = deepcopy(objctags_definitions)
            unlet objctags_definitions
        else
            let g:tagbar_ctags_bin = 'ctags'
            let g:tagbar_type_objc = {
                        \ 'ctagstype' : 'ObjectiveC',
                        \ 'kinds'     : [
                        \ 'i:interface',
                        \ 'I:implementation',
                        \ 'm:Object_method',
                        \ 'c:Class_method',
                        \ 'p:Protocol',
                        \ 'v:Global_variable',
                        \ 'F:Object field',
                        \ 'f:function',
                        \ 'p:property',
                        \ 't:type_alias',
                        \ 's:type_structure',
                        \ 'e:enumeration',
                        \ 'M:preprocessor_macro',
                        \ ],
                        \ 'sro'        : ' ',
                        \ 'kind2scope' : {
                        \ 'i' : 'interface',
                        \ 'I' : 'implementation',
                        \ 'p' : 'Protocol',
                        \ 's' : 'type_structure',
                        \ 'e' : 'enumeration'
                        \ },
                        \ 'scope2kind' : {
                        \ 'interface'      : 'i',
                        \ 'implementation' : 'I',
                        \ 'Protocol'       : 'p',
                        \ 'type_structure' : 's',
                        \ 'enumeration'    : 'e'
                        \ }
                        \ }
        endif

        "----------------------------------------------------------------------------------}}}

        " Tell it to use clang instead of gcc
        let g:syntastic_objc_checker = 'clang'

        let g:c_syntax_for_h = 1
        " Tell it to use clang instead of gcc
        "let g:syntastic_objc_checker = 'clang'
        let g:clang_use_omnifunc = 1
        let g:clang_complete_auto = 0 
        let g:clang_auto_select = 0
        let g:clang_use_library = 1
        let g:clang_periodic_quickfix = 0
        let g:clang_close_preview = 1

        " For Objective-C, this needs to be active, otherwise multi-parameter methods won't be completed correctly
        let g:clang_snippets = 1

        " Snipmate does not work anymore, ultisnips is the recommended plugin
        let g:clang_snippets_engine = 'ultisnips'

        " This might change depending on your installation
        let g:clang_exec = '/usr/local/bin/clang'
        "let g:clang_library_path = '/usr/local/lib/libclang.dylib'

        "autocmd FileType objc,objcpp set foldmethod=expr foldexpr=getline(v:lnum)=~'^#pragma\ mark\ [^-]'?'>1':'='
        autocmd FileType objc,objcpp set foldmethod=syntax 
        "foldlevel=5
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ python
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'python')
        function! SetPython()
            set foldmethod=indent
            "au Filetype python source $VIMFILES/scripts/python.vim
        endfunction

        autocmd FileType python :call SetPython()
        "MyBundle 'klen/python-mode'
        "MyBundle 'yssource/python.vim'
        "MyBundle 'python_match.vim'
        "MyBundle 'pythoncomplete'
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ php
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'php')
        "{{{ main
        "-------------------------------------------------------------------------------------
        function! SetPHP()
            inoremap <C-g><C-d> <ESC>:call PhpDoc()<CR>i
            nnoremap <C-g><C-d> :call PhpDoc()<CR>
            vnoremap <C-g><C-d> :call PhpDocRange()<CR> 
            let b:surround_45 = "<?php \r ?>"

            " imap <C-o> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>i
            let g:pdv_cfg_Type = "mixed"
            let g:pdv_cfg_Package = ""
            let g:pdv_cfg_Version = "$id$"
            let g:pdv_cfg_Author = "xzfred <xzfred@gmail.com>"
            let g:pdv_cfg_Copyright = "2008-2013 fengone.com"
            let g:pdv_cfg_License = "only private!"
            set keywordprg=:help
            set iskeyword-=$,-,58
            "call PhpSyntaxOverride()
            if filereadable("cscope.out")
                cs add cscope.out
            endif
        endfunction
        function! PhpSyntaxOverride()
            hi! def link phpdoctags  phpdefine
            hi! def link phpdocparam phptype
        endfunction
        autocmd FileType php :call SetPHP()

        function! IPhpInsertUse()
            call PhpInsertUse()
            call feedkeys('a',  'n')
        endfunction
        "autocmd FileType php inoremap <Leader>mi <Esc>:call IPhpInsertUse()<CR>
        autocmd FileType php noremap <Leader>mi :call PhpInsertUse()<CR>

        let g:PHP_autoformatcomment = 0
        "let g:PHP_autoformatcomment = 1       " 自动格式注释
        let g:PHP_outdentSLComments = 1
        let g:PHP_default_indenting = 0
        let g:PHP_outdentphpescape = 0
        let g:PHP_removeCRwhenUnix = 1
        let g:PHP_BracesAtCodeLevel = 0
        let g:PHP_vintage_case_default_indent = 1

        let g:phpqa_messdetector_autorun = 0
        let g:phpqa_codesniffer_autorun = 0
        let g:phpqa_codesniffer_cmd='~/mx/www/mx-cms/vendor/bin/phpcs'
        let g:phpqa_messdetector_cmd='~/mx/www/mx-cms/vendor/bin/phpmd'
        "
        "----------------------------------------------------------------------------------}}}
        "{{{ php.vim 语法文件
        "-------------------------------------------------------------------------------------
        "let php_large_file = 2000
        "let php_smart_members = 0
        "let php_smart_semicolon = 0
        "let php_show_pcre = 0
        let php_folding=1                   " 使用代码折叠
        "let php_strict_blocks=1             " 
        "let php_fold_arrays=1               " 折叠数组
        let php_baselib=1                   " 高亮基础函数库
        "let php_htmlInStrings = 0           " 不高亮字符串中的HTML关键字
        "let php_alt_properties = 1          "
        "let php_highlight_quotes = 0
        "let PHP_autoformatcomment = 1       " 自动格式注释
        let php_html_load = 0
        "let php_parent_error_close=0
        "let php_parent_error_open=0
        "let g:AutoComplPop_NotEnableAtStartup = 1
        let php_sql_heredoc=0
        let php_sql_nowdoc=0
        let php_sql_query=0
        "----------------------------------------------------------------------------------}}}
        "let g:phpcomplete_add_class_extensions = ['yaf']
        
        let g:phpcomplete_cache_taglists = 1
		let g:phpcomplete_parse_docblock_comments = 0
		let g:phpcomplete_search_tags_for_variables = 0
        let g:phpcomplete_enhance_jump_to_definition = 0 
                let g:phpcomplete_mappings = {
                     \ 'jump_to_def': ',jd',
                     \ 'jump_to_def_split': ',jsd',
                     \ 'jump_to_def_vsplit': ',jvd',
                    \}
        let g:PHP_default_indenting = 0 
        "MyBundle 'vim-php/tagbar-phpctags.vim'
        if OSX()
            let g:tagbar_phpctags_bin='phpctags'
        endif
        let g:vdebug_options= {
                    \    "port" : 9000,
                    \    "server" : '',
                    \    "timeout" : 20,
                    \    "on_close" : 'detach',
                    \    "break_on_open" : 1,
                    \    "ide_key" : '',
                    \    "path_maps" : {"/data/www": "/Users/xuzhi/mx/www"},
                    \    "debug_window_level" : 0,
                    \    "debug_file_level" : 0,
                    \    "debug_file" : "",
                    \    "watch_window_style" : 'expanded',
                    \    "marker_default" : '=',
                    \    "marker_closed_tree" : '+',
                    \    "marker_open_tree" : '-'
                    \}
        "MyBundle 'arnaud-lb/vim-php-namespace'
        "MyBundle 'spf13/PIV'
        "MyBundle 'beyondwords/vim-twig'
        "MyBundle 'joonty/vdebug'
        "MyBundle 'brookhong/cscope.vim'
        "MyBundle 'joonty/vim-phpqa.git'
        "MyBundle 'php-doc'
        "MyBundle 'shawncplus/phpcomplete.vim'
        "
        let g:expand_region_text_objects_php = {
                    \ 'iw' :0,
                    \ 'aw' :0,
                    \ 'i"' :1,
                    \ 'a"' :1,
                    \ "i'" :1,
                    \ "a'" :1,
                    \ 'i]' :1,
                    \ 'a]' :1,
                    \ 'i)' :1,
                    \ 'a)' :1,
                    \ 'i}' :1,
                    \ 'a}' :1,
                    \ }

        let g:smarty_left_delimiter = '{{'
        let g:smarty_right_delimiter = '}}'
        au BufRead,BufNewFile *.tpl set filetype=smarty3
        au BufRead,BufNewFile *.html set filetype=smarty3
        "au BufRead,BufNewFile *.volt set filetype=jinja
        "autocmd BufRead,BufNewFile,BufEnter *.volt UltiSnipsAddFiletypes htmljinja
        "set cscopetag
        "set cscopeprg=gtags-cscope
        "set cscopequickfix=c-,d-,e-,f-,g0,i-,s-,t-
        nmap <Leader>sts :cs find s <C-R>=expand("<cword>")<CR><CR>
        nmap <Leader>stg :cs find g <C-R>=expand("<cword>")<CR><CR>
        nmap <Leader>stc :cs find c <C-R>=expand("<cword>")<CR><CR>
        nmap <Leader>stt :cs find t <C-R>=expand("<cword>")<CR><CR>
        nmap <Leader>ste :cs find e <C-R>=expand("<cword>")<CR><CR>
        nmap <Leader>stf :cs find f <C-R>=expand("<cfile>")<CR><CR>
        nmap <Leader>sti :cs find i <C-R>=expand("<cfile>")<CR><CR>
        nmap <Leader>std :cs find d <C-R>=expand("<cword>")<CR><CR>
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ HTML
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'html')
        "MyBundle 'amirh/HTML-AutoCloseTag'
        "MyBundle 'hail2u/vim-css3-syntax'
        "MyBundle 'gorodinskiy/vim-coloresque'
        "MyBundle 'tpope/vim-haml'
        "au BufRead,BufNewFile *.tpl set filetype=smarty
        "au Filetype smarty set complete+=k 
        "au Filetype smarty source $VIMFILES/scripts/closetag.vim 
        "au Filetype php,tpl,html,phtml,xml,xsl source $VIMFILES/scripts/closetag.vim
        " Ctrl+_
        "let g:closetg_html_style=1

        "au FileType xhtml,xml ru ftplugin/html/autoclosetag.vim
        "nmap <Leader>ac <Plug>ToggleAutoCloseMappings
    endif
    "let g:user_emmet_leader_key = '<C-g>'
    "----------------------------------------------------------------------------------}}}

    "{{{ sql
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'sql')
        "MyBundle 'vim-scripts/dbext.vim'
        "MyBundle 'mattn/vdbi-vim'
        let g:sql_type_default     = 'mysql'

        "let g:dbext_default_use_sep_result_buffer = 1
        let g:dbext_default_login_script_dir = $VIMFILES 
        let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=root:passwd=;extra=-t:login_script='
        let g:dbext_default_profile_mysql_local_DBI = 'type=DBI:user=root:passwd=:driver=mysql:conn_parms=database=mysql;host=localhost'
        let g:dbext_default_profile = 'mysql_local_DBI'
        let g:dbext_default_display_cmd_line = 1 
        let g:dbext_default_buffer_lines = 20
        let g:dbext_default_type   = 'mysql'
        let g:dbext_default_use_result_buffer = 1
        let g:use_sep_result_buffer = 1

        let dbext_default_MYSQL_bin                = 'mysql'
        let dbext_default_MYSQL_cmd_header         = ''
        let dbext_default_MYSQL_cmd_terminator     = ''
        let dbext_default_MYSQL_cmd_options        = '-t'
        let dbext_default_MYSQL_version            = '5'
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ javascript
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'javascript')
        "MyBundle 'elzr/vim-json'
        "MyBundle 'groenewege/vim-less'
        "MyBundle 'pangloss/vim-javascript'
        "MyBundle 'briancollins/vim-jst'
        "MyBundle 'kchmck/vim-coffee-script'
        "au FileType javascript call JavaScriptFold()

        let g:tagbar_type_javascript = {
              \   'ctagstype': 'javascript'
              \ , 'ctagsbin': 'esctags'
              \ , 'ctagsargs' : '--memory=128M -f -',
              \ 'kinds'     : [
              \ 'a:Parameters:0',
              \ 'v:Variables:0:0',
              \ 'p:Propertes:0:0',
              \ 'c:Context:1:0'
              \ ],
              \ 'sro'        : '::',
              \ 'kind2scope' : {
              \ 'c' : 'context',
              \ },
              \ 'scope2kind' : {
              \ 'context'  : 'c'
              \ }
              \ } 
        let g:tern_show_signature_in_pum = 1
        let g:tsuquyomi_disable_quickfix = 1
        let g:syntastic_typescript_checkers = ['tsuquyomi'] 
        let javascript_enable_domhtmlcss = 1
        autocmd FileType javascript setlocal foldmethod=syntax
    endif
    "----------------------------------------------------------------------------------}}}

    "{{{ ruby
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'ruby')
        "MyBundle 'tpope/vim-rails'
        "let g:rubycomplete_buffer_loading = 1
        "let g:rubycomplete_classes_in_global = 1
        "let g:rubycomplete_rails = 1
    endif
    "----------------------------------------------------------------------------------}}}
     
    "{{{ Misc
    "-------------------------------------------------------------------------------------
    if count(g:my_bundle_groups, 'misc')
        "MyBundle 'tpope/vim-markdown'
        "MyBundle 'suan/vim-instant-markdown'
        "Plugin 'godlygeek/tabular'
        "Plugin 'plasticboy/vim-markdown'
    endif
    "----------------------------------------------------------------------------------}}}
    let g:tagbar_type_snippets = {
        \ 'ctagstype' : 'snippets',
        \ 'kinds' : [
            \ 's:snippets',
        \ ]
    \ }
"----------------------------------------------------------------------------------}}}

nmap <leader>` :<C-U>Calendar<CR>
nmap <leader>1 :<C-U>NERDTreeToggle<CR>
nmap <leader>2 :<C-U>UndotreeToggle<CR>
nmap <leader>4 :<C-U>CtrlSFToggle<CR>
nmap <leader>6 :<C-U>YRShow<CR>
nmap <leader>7 :<C-U>copen<CR>
nmap <leader>8 :<C-U>Gstatus<CR>
nmap <leader>9 :<C-U>Calc<CR>
nmap <leader>0 :<C-U>TagbarToggle<CR>

let g:lmap = {}

call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>

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
function! s:default_mapkey(mkey)
    call signature#utils#Input()
endfunction

"let g:fmap = {'pre' : [' ', 'pre', function('s:default_mapkey')]}
"call leaderGuide#register_prefix_descriptions("m", "g:fmap")
"nnoremap <silent> m :<c-u>LeaderGuide 'm'<CR>

"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'php' : 1,
    \ 'smarty' : 1,
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

au BufRead,BufNewFile *.ino,*.pde set filetype=cpp

" vim:set fdm=marker:set syn=vim:
