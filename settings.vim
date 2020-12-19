" SETTINGS
colorscheme gruvbox
highlight Normal ctermbg=none guibg=none

set smarttab
set cindent
set number

call UseSpaces()

filetype plugin on
autocmd FileType python setlocal noexpandtab shiftwidth=2 softtabstop=2

" Don't show line numbers in terminal mode.
autocmd TermOpen * setlocal nonu
