" PLUGINS
"
call plug#begin(stdpath('data') . '/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
" sorround
Plug 'tpope/vim-surround' " To use it, in visual mode do the following: select a word -> S -> write your content
" colorscheme
Plug 'rakr/vim-two-firewatch'
Plug 'vim-scripts/Zenburn'
Plug 'arzg/vim-colors-xcode'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'cormacrelf/vim-colors-github'
Plug 'Brettm12345/moonlight.vim'
Plug 'sheerun/vim-wombat-scheme'
Plug 'ntk148v/vim-horizon'
Plug 'herrbischoff/cobalt2.vim'
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim'
Plug 'whatyouhide/vim-gotham'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'chriskempson/base16-vim'

" Plug 'chriskempson/base16-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'liuchengxu/space-vim-theme'
Plug 'jaredgorski/spacecamp'
Plug 'sjl/badwolf'
Plug 'haishanh/night-owl.vim'
Plug 'micha/vim-colors-solarized'
Plug 'crusoexia/vim-monokai'
Plug 'mhartington/oceanic-next'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Tagbar
Plug 'majutsushi/tagbar'

" Nerdcommenter
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

" Auto completion
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1

" Auto complete for Python
"Plug 'deoplete-plugins/deoplete-jedi'

" Auto complete for C++
" Plug 'zchee/deoplete-clang'
" Plug 'shougo/deoplete-clangx'

" Status bar
Plug 'vim-airline/vim-airline'

" Search in all files of a project
Plug 'dyng/ctrlsf.vim'

" Neoclide installation and confiuration.

" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


" by default, if you open tsx file, neovim does not show syntax colors
" vim-tsx will do all the coloring for jsx in the .tsx file
Plug 'ianks/vim-tsx'

" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'

" For jsx.
Plug 'chemzqm/vim-jsx-improve'

" Search in files.
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Close tags
Plug 'alvan/vim-closetag'

" Kotlin.
Plug 'udalov/kotlin-vim'

" C#
Plug 'OmniSharp/omnisharp-vim'

Plug 'ferrine/md-img-paste.vim'

" Language server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


Plug 'terryma/vim-multiple-cursors'

Plug 'Valloric/MatchTagAlways'

Plug 'alvan/vim-closetag'

Plug 'ipod825/vim-tabdrop'

"Initialize plugin system
call plug#end()

"" TypeScript language server.
"let g:LanguageClient_serverCommands = { 'typescript': ['typescript-language-server', '--stdio'], 'typescript.tsx': ['typescript-language-server', '--stdio'], }

let g:tabdrop_close_on_poptag=0

autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'images'
let g:mdip_imgname = ''

" GLOBAL VARIABLES
"

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.tsx"

let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1, 'typescript.tsx': 1 }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

" coc extensions.
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier']

" Python path
let g:python_host_prog = '/usr/bin/python3'
"let g:python_host_prog  = 'C:\\Users\Mikhael\\AppData\\Local\\Programs\\Python\\Python36\\python'
"let g:python3_host_prog = 'C:\\Users\Mikhael\\AppData\\Local\\Programs\\Python\\Python36\\python'

" Omnisharp server.
let g:OmniSharp_server_use_mono = 1

" Language server settings
"let g:LanguageClient_serverCommands = {
    "\ 'kotlin': ["kotlin-language-server"],
    "\ }

" SETTINGS
"
"
" Wrap
set nowrap

" Editor
set encoding=utf-8
set number
set ruler
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set expandtab
set hlsearch

aug python
    " ftype/python.vim overwrites this
    au FileType python setlocal ts=2 sts=2 sw=2 expandtab autoindent copyindent
aug end

" Color
highlight Comment ctermfg=green
highlight LineNr ctermfg=grey
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
colorscheme gruvbox

" Backup
set backup
set backupdir=~/.config/nvim/backup
set directory=~/.config/nvim/backup
set undodir=~/.config/nvim/backup

" Hihghlight extra white space
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Maps
"
" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


" Auto completion (using neoclide)
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Prettier: rempa formatting
vmap <leader>p <Plug>(coc-format-selected)
nmap <leader>p <Plug>(coc-format-selected)

" This is the default extra key bindings
"nnoremap <silent> <C-p> :FZF<CR>
"nnoremap <silent> <C-G> :GFiles<CR>
nnoremap <silent> <leader>g :GFiles<CR>
nnoremap <silent> <leader>f :FZF<CR>


" vim-tbadrop: shortcuts.
nnoremap <C-]> :call Gotodef()<CR>
nnoremap <C-)> :call OpenInNewTab()<CR>
nmap <C-t> :TabdropPopTag<Cr>

function! Gotodef()
    TabdropPushTag
    try
        TagTabdrop
    catch /E433:/
        call LanguageClient_textDocument_definition({'gotoCmd': 'Tabdrop'})
    endtry
endfunction

function! OpenInNewTab()
  CocAction('jumpDefinition', 'drop')
endfunction

" For clostag.vim
" inoremap ><Tab> ><Esc>?<[A-z]<CR>lyiwh/[^%]><CR>la</<C-r>"><Esc>F<i
"


" Paste image
"function! SaveFile() abort
  "let targets = filter(
        "\ systemlist('xclip -selection clipboard -t TARGETS -o'),
        "\ 'v:val =~# ''image''')
  "if empty(targets) | return | endif

  "let outdir = expand('%:p:h') . '/images'
  "if !isdirectory(outdir)
    "call mkdir(outdir)
  "endif

  "let mimetype = targets[0]
  "let extension = split(mimetype, '/')[-1]
  "let tmpfile = outdir . '/savefile_tmp.' . extension
  "call system(printf('xclip -selection clipboard -t %s -o > %s',
        "\ mimetype, tmpfile))

  "let cnt = 0
  "let filename = outdir . '/image' . cnt . '.' . extension
  "while filereadable(filename)
    "call system('diff ' . tmpfile . ' ' . filename)
    "if !v:shell_error
      "call delete(tmpfile)
      "break
    "endif

    "let cnt += 1
    "let filename = outdir . '/image' . cnt . '.' . extension
  "endwhile

  "if filereadable(tmpfile)
    "call rename(tmpfile, filename)
  "endif

  "let @* = '[](' . fnamemodify(filename, ':.') . ')'
  "normal! "*p
"endfunction

"noremap <silent> <Leader>p : call SaveFile()<CR>

" Wrapping
noremap <silent> <Leader>w : call ToggleWrap()<CR>
function ToggleWrap()
  if &wrap
    echo "Wrap OFF"
    setlocal nowrap
    set virtualedit=all
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
    silent! nunmap <buffer> <Up>
    silent! nunmap <buffer> <Down>
    silent! nunmap <buffer> <Home>
    silent! nunmap <buffer> <End>
  else
    echo "Wrap ON"
    setlocal wrap linebreak nolist
    set virtualedit=
    setlocal display+=lastline
    noremap <buffer> <silent> <Up> gk
    noremap <buffer> <silent> <Down> gj
    noremap <buffer> <silent> <Home> g<Home>
    noremap <buffer> <silent> <End> g<End>
    inoremap <buffer> <silent> <Up> <C-o>gk
    inoremap <buffer> <silent> <Down> <C-o>gj
    inoremap <buffer> <silent> <Home> <C-o>g<Home>
    inoremap <buffer> <silent> <End> <C-o>g<End>
  endif
endfunction


" SHORTCUTS
"
" Tabs shortcuts
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Adapt the configuration before to be more trivial the use.
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$
" Search for visually hightlighted text.
vnoremap <c-d> y<ESC>/<c-r>"<CR>
" NERDTreeToggle (use Ctrl + b)
"nmap <C-B> :NERDTreeToggle <space>
"" Auto start NERD tree when opening a directory
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | wincmd p | endif
nnoremap <C-b> :NERDTreeToggle<CR>

" use ,, for escape
inoremap ;; <Esc>
inoremap kk <Esc>
inoremap jj <Esc>
inoremap bb <Esc>
inoremap ññ <Esc>

" Shortcut to edit THIS configuration file: (e)dit (c)onfiguration
nnoremap <silent> <leader>ec :e $MYVIMRC<CR>
" toggle tagbar
nnoremap <silent> <leader>tb :TagbarToggle<CR>


" Required for operations modifying multiple buffers like rename.
set hidden


nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Rename - rn => rename
noremap <leader>rn :call LanguageClient#textDocument_rename()<CR>

" Rename - rc => rename camelCase
noremap <leader>rc :call LanguageClient#textDocument_rename(
            \ {'newName': Abolish.camelcase(expand('<cword>'))})<CR>

" Rename - rs => rename snake_case
noremap <leader>rs :call LanguageClient#textDocument_rename(
            \ {'newName': Abolish.snakecase(expand('<cword>'))})<CR>

" Rename - ru => rename UPPERCASE
noremap <leader>ru :call LanguageClient#textDocument_rename(
            \ {'newName': Abolish.uppercase(expand('<cword>'))})<CR>

nnoremap tp  :tabnew %<CR>

nmap <leader>rn <Plug>(coc-rename)

" Snippets

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
