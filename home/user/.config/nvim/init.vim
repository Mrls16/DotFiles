call plug#begin()

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" EditorConfig "
Plug 'editorconfig/editorconfig-vim'

" Indent Blankline "
Plug 'lukas-reineke/indent-blankline.nvim'

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Icons for nerdTree"
Plug 'ryanoasis/vim-devicons'

" Fix Cursor "
Plug 'antoinemadec/FixCursorHold.nvim'

" Minimap "
Plug 'wfxr/minimap.vim'

" Code completion for Vim"
Plug 'valloric/youcompleteme'

" Vim Colorizer"
Plug 'lilydjwg/colorizer'

" Emmet "
Plug 'mattn/emmet-vim'

" Repeat"
Plug 'tmsvg/pear-tree'

" Airline "
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes "
Plug 'sainnhe/sonokai'

" Snippets "
Plug 'epilande/vim-react-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'joaohkfaria/vim-jest-snippets'
Plug 'simonsmith/vim-custom-snippets'
Plug 'SirVer/ultisnips'

" StartPage "
" Plug 'mhinz/vim-startify' "

" Test "
Plug 'vim-test/vim-test'

" Syntax higlighting "
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'sheerun/vim-polyglot'

" Git Things "
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'

" Jsdoc "
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}

" Initialize plugin system
call plug#end()

" Xd "
set number
set relativenumber
set cursorline
set mouse=a
set noswapfile
set nobackup
set nowritebackup
set expandtab
set tabstop=4
set shiftwidth=4
set laststatus=2
set noshowmode
set updatetime=100
set autowrite
set ttimeoutlen=0
set nostartofline
set splitbelow
set splitright
set scrolloff=3
set sidescrolloff=15
set sidescroll=1
set foldmethod=manual

" NERDTree "
nnoremap <leader>tr :NERDTreeToggle<CR>

" Airline Conf "
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='wombat'

"Set space as mapleader"
let mapleader = ' '

"Themes"
let g:sonokai_style = 'shusia'
let g:airline_theme = 'sonokai'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 1
let g:indentLine_char='▏'
let g:closetag_filenames = "*.html,*.js,*.jsx,*.tsx"
colorscheme sonokai

" Js "
let g:jsx_ext_required = 0

" Emmet Conf "
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Airline Conf "
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffers_label = ''
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#fnamecollapse = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 0

" Powerline Conf "
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' ☰ '
let g:airline_symbols.maxlinenr = ' '

" AutoReload"
if ! exists("g:CheckUpdateStarted")
  let g:CheckUpdateStarted=1
  call timer_start(1,'CheckUpdate')
endif
function! CheckUpdate(timer)
  silent! checktime
  call timer_start(1000,'CheckUpdate')
endfunction

" Syntax "
let g:javascript_plugin_jsdoc=1

" Git Confs"
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified='•'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_modified_removed = '•'
let g:gitgutter_map_keys = 0
let g:gitgutter_enabled = 0
set diffopt+=vertical

" Close Tag "
let g:closetag_filenames = "*.html,*.js,*.jsx,*.tsx"

" FileTypes "
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype javascriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" Startify Conf "
" autocmd User Startified nnoremap <buffer> u :PlugUpdate<cr> "

" Minimap Conf"
let g:minimap_width = 20
let g:minimap_auto_start = 1
let g:minimap_auto_start_win_enter = 1

" Cursor Conf "

let g:cursorhold_updatetime = 100

" Key Bindings "

set nostartofline
nnoremap ñ /

" Prev buffer "
nnoremap <C-k> :bprevious<CR>

" Next buffer "
nnoremap <C-j> :bnext<CR>

" Move lines "
nnoremap <a-j> :move+<CR>
xnoremap <a-j> :move'>+<CR>gv
nnoremap <a-k> :move-2<CR>
xnoremap <a-k> :move-2<CR>gv
" Close buffer via bbye, keeping layout "
nnoremap <Leader>bd :Bdelete<CR> 
" Open new line below and above current line "

nnoremap <leader>o o<esc>
nnoremap <leader>O O<esc>

" Allow us to go to normal mode in terminal mode so we can scroll etc "
tnoremap <F1> <C-\><C-n>

nmap <Leader>hj <Plug>(GitGutterNextHunk)  
nmap <Leader>hk <Plug>(GitGutterPrevHunk)
nmap <F12> :GitGutterToggle<CR>
nmap <Leader>hu <Plug>(GitGutterUndoHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
nmap <Leader>hf :GitGutterEnable<bar>GitGutterQuickFix<bar>copen<CR><CR>

nmap <Leader>hb :GitMessenger<CR>

