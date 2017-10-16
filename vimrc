" vim:fdm=marker:fmr={{{,}}}

"{{{ 配置使用场景
"----------------------------------------------------------------
"-------------------------------------------------------------}}}
 
"{{{ 功能函数
"----------------------------------------------------------------
    silent function! OSX()
        return 1 "has('macunix')
    endfunction
    silent function! LINUX()
        return 0 " has('unix') && !has('macunix') && !has('win32unix')
    endfunction
    silent function! WINDOWS()
        return  (has('win16') || has('win32') || has('win64'))
    endfunction
"-------------------------------------------------------------}}}

"{{{ 平台相关
"-----------------------------------------------------------------------------
set nocompatible        " 不需要与vi兼容
scriptencoding utf-8

set mousehide               " Hide the mouse cursor while typing

if has('clipboard')
    "set clipboard=autoselect,unnamed  " 剪贴板与无名寄存器同步
    if has('unnamedplus')  " When possible use + register for copy-paste
        set clipboard=unnamed,unnamedplus,autoselect
    else         " On mac and Windows, use * register for copy-paste
        set clipboard=unnamed,autoselect
    endif
endif

let g:my_bundle_groups=['sql', 'person', 'unite', 'general', 'neocomplete', 'programming', 'php', 'javascript', 'html', 'misc', 'fugitive',]
"--------------------------------------------------------------------------}}}

"{{{ VIM 设置
"-----------------------------------------------------------------------------

    " {{{ 一般设置
    "-----------------------------------------------------------------------------
    let mapleader="\<Space>" 
    let g:mapleader="\<Space>" 
    set history=3500         " 设置历史记录最大为n条命令
    set browsedir=buffer    " use directory of the related buffer for file browser
    set viminfo=!,h,'200,f1,<10,:2000,@2000,/2000          " 保存viminfo文件设置
    set isk+=$,%,#,-        " 搜索关键字选项
    set noconfirm             " 不使用确认对话框
    set helplang=cn         " 帮助文件默认语言为中文
    set copyindent
    "--------------------------------------------------------------------------}}}

    "{{{ 路径
    "-----------------------------------------------------------------------------
    "let $vimr = $VIM . '/other/vimoutliner,' . $VIMFILES.','.$VIM.'/vim71'
    "set runtimepath=$vimr      " add this path to rtp, support GLVS
    set makeef=error.err           " the errorfile for :make and :grep
    "--------------------------------------------------------------------------}}}

    "{{{ 文件处理
    "-----------------------------------------------------------------------------
    if has('autocmd')
        filetype plugin indent on
        "filetype on             " 文件类型识别
        "filetype plugin on      " 自动加载与特定文件类型相关的插件
        "filetype indent on      " 自动加载与特定文件类型相关的缩进格式
    endif

    set nobackup
    set nowritebackup
    set ffs=unix,dos,mac    " 文件格式
    set fenc=utf-8          " 文件编码默认设置utf-8
    set sws=
    set autoread            " 自动重新加载在外部修改了的文件
    set noswapfile          " 不使用交换文件
    "set fencs=ucs-bom,utf-8,gbk,gb2312,big5,euc-jp,gb18030 " 可识别的文件编码
    set fencs=ucs-bom,utf-8,chinese

    set encoding=utf-8
    set langmenu=zh_CN.UTF-8
    language message zh_CN.UTF-8
    if WINDOWS() 
        source $VIMRUNTIME/delmenu.vim
        source $VIMRUNTIME/menu.vim
    endif

    "--------------------------------------------------------------------------}}}

    "{{{ Vim 界面设置
    "-----------------------------------------------------------------------------
    set nu                  " 显示行号
    set wildmenu            " 命令行补全以增强模式运行
    set tabline=%N\ %t
    set mousemodel=popup    " 允许鼠标右键弹出菜单
    set showtabline=2
    "--------------------------------------------------------------------------}}}

    "{{{ 可视提示
    "-----------------------------------------------------------------------------
    set incsearch           " 步进搜索
    set hlsearch            " 高亮搜索到的文本
    "set noshowmatch           " 高亮显示匹配的配对符号
    set mat=10
    set laststatus=2        " 窗口总是显示状态行
    set statusline=%<[%n]%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%L:%l,%c%V%)\ %P " 状态行格式
    set so=2               " 光标下最少保留显示10行
    set showcmd             " 在状态行里显示 (部分的) 命令
    "set cursorline
    "hi cursorline guibg=NONE gui=underline
    "hi cursorline guibg=#444444 
    "hi CursorColumn guibg=#333333
    "hi Pmenu guibg=#eeeeee
    "hi PmenuSel guibg=#555555 guifg=#ffffff
    "--------------------------------------------------------------------------}}}

    "{{{ 文本格式/搜索
    "-----------------------------------------------------------------------------
    set wrap                    " 折行
    set expandtab               " 插入模式里: 插入 <Tab> 时使用合适数量的空格
    set tabstop=4
    set softtabstop=4           " <Tab> 替换成4个空格            
    set autoindent              " 自动缩进
    set ignorecase              " 搜索时不区分大小写
    set shiftwidth=4            " 自动缩进每一步使用的空白数目
    set backspace=indent,eol,start  " <BS>键的行为
    set matchpairs+=<:>         " 增加<>匹配成对符号
    set whichwrap=b,s,<,>,[,]       " 行首行尾连接移动的操作
    "set foldmethod=indent
    "set nofoldenable
    set smartindent
    "--------------------------------------------------------------------------}}}
    if has('syntax') && !exists('g:syntax_on')
      syntax enable
    endif
"--------------------------------------------------------------------------}}}

"{{{ 我自己的特定键盘映射/功能函数定义
"-----------------------------------------------------------------------------
    if has("mac") || has("macunix")
      nmap <D-j> <M-j>
      nmap <D-k> <M-k>
      vmap <D-j> <M-j>
      vmap <D-k> <M-k>
      " Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
      nmap <M-j> mz:m+<cr>
      nmap <M-k> mz:m-2<cr>
      vmap <M-j> :m'>+<cr>`<my`>mzgv`yo
      vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo

    endif

    " Close the current buffer
    map <leader>bd :Bclose<cr>

    " Close all the buffers
    map <leader>ba :1,1000 bd!<cr>

    " Useful mappings for managing tabs
    map <leader>tn :tabnew<cr>
    map <leader>to :tabonly<cr>
    map <leader>tc :tabclose<cr>
    map <leader>tm :tabmove 
    map <leader>tmh :tabmove 0<cr>
    map <leader>tM :tabmove<cr>
"-----------------------------------------------------------------------------}}}

" execute pathogen#infect('bnd/{}')

"{{{ junegunn/vim-plug 插件设置
"--------------------------------------------------------------

call plug#begin('~/.vim/plugged')

    Plug 'vim-scripts/YankRing.vim'
    "Plug 'svermeulen/vim-easyclip' "替代YankRing
    Plug 'vim-scripts/matchit.zip'

    Plug 'luochen1990/rainbow'
    Plug 'mbbill/undotree'
    Plug 'simnalamburt/vim-mundo'

    "{{{ code
    "--------------------------------------------------------------
    Plug '~/.vim/local/dash.vim'
    Plug 'honza/vim-snippets'
    Plug 'SirVer/ultisnips'
    "Plug 'violetyk/neocomplete-php.vim'
    "Plug 'skeept/Ultisnips-neocomplete-unite'
    "--------------------------------------------------------------}}}
    
    "{{{ php
    "--------------------------------------------------------------
    Plug '2072/PHP-Indenting-for-VIm'
    Plug 'Rican7/php-doc-modded'
    Plug 'shawncplus/phpcomplete.vim'
    Plug 'vim-php/tagbar-phpctags.vim'
    Plug 'joonty/vdebug' , {'on':  'Run'}
    Plug 'alvan/vim-php-manual'
    Plug 'arnaud-lb/vim-php-namespace'

    "--------------------------------------------------------------}}}

    "{{{ git
    "--------------------------------------------------------------
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    "Plug 'https://github.com/junegunn/vim-github-dashboard.git'
    Plug 'gregsexton/gitv'
    "--------------------------------------------------------------}}}

    "{{{ color
    "--------------------------------------------------------------
    "Plug 'nanotech/jellybeans.vim'
    "--------------------------------------------------------------}}}

    Plug 'mhinz/vim-signify'
    "Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tsukkee/unite-tag'
    Plug 'Shougo/unite-outline'
    Plug 'Shougo/unite-help'
    "Plug 'othree/xml.vim'
    Plug 'junegunn/vim-emoji'
    Plug 'rhysd/unite-emoji.vim' 
    Plug 'tacroe/unite-mark' 

    "Plug 'pelodelfuego/vim-swoop' 
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-vinegar'     " 当前目录探索
    Plug 'tpope/vim-eunuch'      " like UNIX helper
    Plug 'dbakker/vim-projectroot'    

    Plug 'Shougo/neocomplete.vim'
    Plug 'Shougo/vimproc.vim'
    Plug 'Shougo/unite.vim'
    Plug 'Shougo/neomru.vim'    
    "Plug 'Shougo/denite.nvim'
    "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/neco-vim'
    Plug 'Shougo/deol.nvim' 

    "Plug 'tenfyzhong/CompleteParameter.vim' 
    Plug 'scrooloose/syntastic'
    Plug 'majutsushi/tagbar'
    Plug 'Raimondi/delimitMate'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'j5shi/VisIncr'
    
    Plug 'junegunn/vim-easy-align'
    Plug 'terryma/vim-expand-region'
    Plug 'dyng/ctrlsf.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'scrooloose/nerdtree.git'
    Plug 'Lokaltog/vim-easymotion'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'kshenoy/vim-signature'
    Plug 'vimwiki/vimwiki'
    Plug 'dkprice/vim-easygrep'
    Plug 'iakio/smarty3.vim'

    Plug 'pangloss/vim-javascript'
    Plug 'elzr/vim-json'
    Plug 'othree/jsdoc-syntax.vim'
    Plug 'heavenshell/vim-jsdoc'
    Plug 'ternjs/tern_for_vim'
    Plug 'othree/jspc.vim'
    Plug 'maksimr/vim-jsbeautify'
    Plug 'leafgarland/typescript-vim'
    Plug 'clausreinke/typescript-tools.vim'

    Plug 'jason0x43/vim-js-indent'
    Plug 'mattn/emmet-vim'
    Plug 'hail2u/vim-css3-syntax'
    Plug 'groenewege/vim-less'
    Plug 'vim-scripts/mimicpak'
    Plug 'haya14busa/incsearch.vim'
    Plug 'hecal3/vim-leader-guide'
    Plug 'osyo-manga/vim-over'
    Plug 'mhinz/vim-startify'
    Plug 'joshdick/onedark.vim'
"    derekwyatt/vim-fswitch
"    derekwyatt/vim-protodef

    " On-demand loading
    Plug 'scrooloose/nerdtree' ", { 'on':  'NERDTreeToggle' }

    " Plugin outside ~/.vim/plugged with post-update hook
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

    " Unmanaged plugin (manually installed and updated)
    " Plug '~/my-prototype-plugin'
    
    Plug '~/.vim/local/mark.vim'
    Plug '~/.vim/local/old'
    Plug '~/.vim/local/vimcdoc'
    Plug '~/.vim/local/calendar-vim'

    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'Valloric/MatchTagAlways'
    "Plug 'ryanoasis/vim-devicons'
    Plug 'tommcdo/vim-exchange'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    "{{{ vim 插件开发
    "--------------------------------------------------------------
    Plug 'tpope/vim-scriptease'
    Plug 'tweekmonster/exception.vim'
    Plug 'mhinz/vim-lookup'
    Plug 'tweekmonster/helpful.vim'
    "--------------------------------------------------------------}}}
    Plug 'tclem/vim-arduino'
    Plug 'sudar/vim-arduino-syntax'
    Plug 'CodeFalling/fcitx-vim-osx'

    Plug 'Shougo/vimshell'
    Plug 'jewes/Conque-Shell'
    "Plug 'edkolev/tmuxline.vim' "tmux状态行生成器  启动错误
    Plug 'gregsexton/VimCalc'
    "Plug 'edkolev/promptline.vim' "快速生成一个power风格的shell提示状态行
    Plug 'Chiel92/vim-autoformat'
    "Plug 'lua-support'      
    "Plug 'vim-lua-ftplugin'

    "{{{ vim 颜色
    "--------------------------------------------------------------
    Plug 'flazz/vim-colorschemes'
    Plug 'roosta/vim-srcery' 
    Plug 'jacoborus/tender.vim' 
    Plug 'goatslacker/mango.vim'        
    Plug 'morhetz/gruvbox'
    Plug 'rakr/vim-one'
    "--------------------------------------------------------------}}}
    "Plug 'VOoM'             
    Plug 'chrisbra/csv.vim'
    Plug 'amitab/vim-unite-cscope'

call plug#end()
source ~/.vim/plug.vim

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echom 'Disabled autocomplete'
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echom 'Enabled autocomplete'
endfunction
autocmd User MultipleCursorsPre  NeoCompleteLock
autocmd User MultipleCursorsPost NeoCompleteUnlock

"--------------------------------------------------------------}}}

"{{{ 颜色
"-----------------------------------------------------------------------------
    syntax on               " 启用语法高亮
    set bg=dark
    set termguicolors
    if !has("gui_running")
        "colorscheme zenburn
        "colorscheme desertEx
        colorscheme onedark
        if $TERM_PROGRAM =~ "iTerm"
            if exists('$TMUX')
                "let &t_SI = "\<Esc>[3 q"
                "let &t_EI = "\<Esc>[0 q"
                let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
                let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
                colorscheme SlateDark
            else
                let &t_SI = "\<Esc>]50;CursorShape=1\x7"
                let &t_EI = "\<Esc>]50;CursorShape=0\x7"
            endif
        endif

        function MyTabLine()
            let s = ''
            for i in range(tabpagenr('$'))
                " 选择高亮
                if i + 1 == tabpagenr()
                    let s .= '%#TabLineSel#'
                else
                    let s .= '%#TabLine#'
                endif

                " 设置标签页号 (用于鼠标点击)
                let s .= '%' . (i + 1) . 'T'

                " MyTabLabel() 提供标签
                let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
            endfor

            " 最后一个标签页之后用 TabLineFill 填充并复位标签页号
            let s .= '%#TabLineFill#%T'

            " 右对齐用于关闭当前标签页的标签
            if tabpagenr('$') > 1
                let s .= '%=%#TabLine#%999Xclose'
            endif
            return s
        endfunction

        function MyTabLabel(n)
            let buflist = tabpagebuflist(a:n)
            let winnr = tabpagewinnr(a:n)
            return bufname(buflist[winnr - 1]) . '[' . a:n . ']'
        endfunction

        set tabline=%!MyTabLine()
    endif
    "--------------------------------------------------------------------------}}}
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

