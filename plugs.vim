" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" TODO: Review the following line because it causes an error in the using of
" tabs
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" set rtp+=/usr/local/opt/fzf
Plug 'junegunn/fzf.vim'

" Gruvbox theme
Plug 'morhetz/gruvbox'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'tag': 'v0.0.80'}

" Use JSX
Plug 'MaxMEllon/vim-jsx-pretty'

" Use emmet
Plug 'mattn/emmet-vim'

Plug 'ianks/vim-tsx'

"" VIM TSX
" by default, if you open tsx file, neovim does not show syntax colors
" typescript-vim will do all the coloring for typescript keywords
Plug 'leafgarland/typescript-vim'

Plug 'alvan/vim-closetag'

Plug 'numkil/ag.nvim'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

"Plug 'tpope/vim-surround'

" Comments
Plug 'preservim/nerdcommenter'

Plug 'jcfaria/vim-r-plugin'

" VueJS
Plug 'posva/vim-vue'

"Plug 'leafOfTree/vim-vue-plugin'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'],
  \ 'branch': 'release' }

Plug 'ryanoasis/vim-devicons'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tpope/vim-surround'

"Plug 'junegunn/goyo.vim'

Plug 'tpope/vim-capslock'

Plug 'puremourning/vimspector'

" Initialize plugin system
call plug#end()
