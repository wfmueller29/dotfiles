set tabstop=2
set softtabstop=2
set shiftwidth=2 
set autoindent
set smartindent
if !has('macunix')
    set termguicolors " fixed grubox highlight issue on mac
endif

" ale remap styler
nnoremap <leader>sty :ALEFix<space>styler<CR>

" set autopairs
let b:AutoPairs={'(':')', '[':']', '{':'}','"':'"', "`":"`", '```':'```'}

" set format options
set formatoptions+=r
