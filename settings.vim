" SETTINGS
colorscheme gruvbox
highlight Normal ctermbg=none guibg=none

set smarttab
set cindent

set tabstop=2
set shiftwidth=2
set expandtab " always uses spaces instead of tab characters

set number

filetype plugin on
autocmd FileType python setlocal noexpandtab shiftwidth=2 softtabstop=2

" Don't show line numbers in terminal mode.
autocmd TermOpen * setlocal nonu
