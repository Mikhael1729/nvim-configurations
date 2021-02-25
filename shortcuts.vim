"" Snnipets
" You need to have installed Rg
nnoremap <c-a> :Rg<CR>
command! -bang -nargs=* Ag
  \ call fzf#vim#grep(
  \   'ag --column --numbers --noheading --color --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

"" Markdown image
" autocmd FileType markdown nmap <buffer><silent> <leader>i :call mdip#MarkdownClipboardImage()<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <silent> <leader>ec :e $MYVIMRC<CR>

" Can be typed even faster than jj, and if you are already in
"    normal mode, you (usually) don't accidentally move:
:imap jk <Esc>
:imap ññ <Esc>
:imap kj <Esc>
" If want to avoid jk in certain languages can use:
" (and to make it where order doesn't matter, the second mapping also)
:imap jw <Esc>
:imap wj <Esc>
" Press i to enter insert mode, and ii to exit.
:imap ii <Esc>

" Pressing Ctrl-L leaves insert mode in evim, so why not in regular vim, too.
:imap <C-L> <Esc>
" This is a variation on the previous mapping that checks for evim
" and only changes the function of <C-L> in regular vim.  This allows <C-L>
" to still work as usual in evim. See :help insertmode for more.
:inoremap <expr> <C-L> &insertmode ? '<C-L>' : '<Esc>'
" This is a variation on the previous mapping that additionally checks
" for the popup menu (present when doing completions). During completions,
" <C-L> adds a character from the current match, so this mapping will
" preserve that behavior. See :help popupmenu-keys for more.
:inoremap <expr> <C-L> (pumvisible() <bar><bar> &insertmode) ? '<C-L>' : '<Esc>'
" Use backtick.
:imap ` <Esc>

" Two semicolons are easy to type.
:imap ;; <Esc>
" Press Shift-Space (may not work on your system).
:imap <S-Space> <Esc>
" Try the following so Shift-Space also enters insert mode.
:nmap <S-Space> i

" Navigation remap
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>

" COC

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
xmap <leader>r  <Plug>(coc-format)
nmap <leader>r  <Plug>(coc-format)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-s> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-s>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-s> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-s> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-s>"
endif

" noremap <silent> k gk
" noremap <silent> j gj
" noremap <silent> 0 g0
" noremap <silent> $ g$

" nnoremap j gj
" nnoremap k gk
" vnoremap j gj
" vnoremap k gk
" nnoremap <Down> gj
" nnoremap <Up> gk
" vnoremap <Down> gj
" vnoremap <Up> gk
" inoremap <Down> <C-o>gj
" inoremap <Up> <C-o>gk

noremap <silent> <Leader>w :call ToggleWrap()<CR>

noremap <silent> <Leader>u :call ToggleWrap2()<CR>

" Leader
map <Space> <Leader>

" Indentation
nnoremap <Leader>i :call ToggleIndentationMode()<CR>

" Copy and paste
vnoremap <Leader>y "+y
vnoremap <Leader>p "+p

nnoremap <C-x> :call BindAllWindows()<CR>
