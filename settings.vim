" SETTINGS
"hi VerPlit ctermbg=0 ctermfg=0
"hi LineNr ctermbg=0

"set foldcolumn=1
"hi LineNr guibg=Black
"hi foldcolumn guibg=Black
"hi VertSplit guibg=Black guifg=Black

set cindent
"set number

set tabstop=2     " Size of a hard tabstop (ts).
set shiftwidth=2  " Size of an indentation (sw).
set expandtab     " Always uses spaces instead of tab characters (et).
set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent    " Copy indent from current line when starting a new line.
set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).

filetype plugin on
autocmd FileType python setlocal noexpandtab shiftwidth=2 softtabstop=0

" Don't show line numbers in terminal mode.
autocmd TermOpen * setlocal nonu

" Theme and background
" set background=dark
colorscheme gruvbox

" highlights (:help highlight)
set foldcolumn=1
hi LineNr ctermbg=16
 hi FoldColumn ctermbg=16
hi VertSplit ctermbg=16 ctermfg=16
"hi foldcolumn ctermbg=16 ctermfg=16

"
hi Normal ctermbg=none guibg=none
hi StatusLine cterm=none ctermbg=none ctermfg=239
hi StatusLineNC cterm=none ctermbg=none ctermfg=236
hi LineNr ctermbg=none ctermfg=236
