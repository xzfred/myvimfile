" vim:fdm=marker:fmr={{{,}}} 
set guioptions-=T
set guioptions-=lL
set columns=299
set lines=199
set guitablabel=%N\ %t
set guitabtooltip=%F

if OSX()
    set guifont=Menlo:h14
    "set guifont=Literation\ Mono\ Powerline\ Nerd\ Font\ Complete\ Mono:h16
    "set guifont=Knack\ Regular\ Nerd\ Font\ Complete:h14

    " set gfw=黑体:h14
    "set guifont=Courier\ 10\ Pitch\ 9
    "set guifont=Courier\ New:h13
    "set guifont=Monaco:h12
    "set guifont=Monospace\ 9
elseif LINUX()
    "set guifont=文泉驿等宽正黑 Medium 12
elseif WINDOWS()
    set guifont=Consolas:h10:cANSI
    "set guifontwide=新宋体:h11  
    "set guifont=Courier_New:h9:cANSI
    set gfw=Microsoft_YaHei:h9
endif

let g:mwDefaultHighlightingPalette = 'extended'
"colorscheme dejavu
"colorscheme onedark
colorscheme gruvbox
"colorscheme wombat 
"colorscheme hybrid
"colorscheme molokai 
"colorscheme Monokai
"colorscheme Solarized
let g:airline_theme='gruvbox'

