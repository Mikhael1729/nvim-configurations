" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

let g:mdip_imgdir = '.'

" Prefer rg > ag > ack
" https://hackercodex.com/guide/vim-search-find-in-project/
if executable('ag')
  let g:ackprg = 'rg -S --no-heading --vimgrep'
endif


let g:coc_snippet_next = '<tab>'

"" Variables

let g:python_host_prog = '/usr/bin/python3'
"let g:python_host_prog  = 'C:\\Users\Mikhael\\AppData\\Local\\Programs\\Python\\Python36\\python'
"let g:python3_host_prog = 'C:\\Users\Mikhael\\AppData\\Local\\Programs\\Python\\Python36\\python'

" coc extensions
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-pairs', 'coc-snippets']

let g:ackprg = 'ag --nogroup --nocolor --column'
" SHORTCUTS

"" Closetag config

" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'


" I think this helpls to the indentation for Python files.
let g:python_recommended_style = 0
let g:pymode_indent = v:false

"## My globals ##
let g:with_spaces = "true" " Defines the default mode for indentation (if true: use spaces else tabs)
