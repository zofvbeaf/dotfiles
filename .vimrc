set nocompatible

let g:C_SourceCodeExtensions = 'c h cc cp cxx cpp CPP c++ C i ii cu l y'
set backspace=indent,eol,start
set history=50
set showcmd 		"in status line
set scrolloff=7 	"keep in middle
set showmatch 	 	"highlight brackets match
set expandtab		"change tab to space, CTRL-V<Tab> to be real tab
set shiftround		"Round indent to multiple of 'shiftwidth'
set nu
set ci
set ai
set ts=2
set sw=2

set cino=g0         "c++ public: won't indent

set incsearch		"Hightlight even if you are not finish your typing.
set ignorecase		"A and a are equal
set smartcase 		"Ab and ab are not equal, AB and ab are equal
set hlsearch        "Hightlight all search results

set cul
set cuc
set ruler 			"show status line
set laststatus=2

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.o,*.so,*~, "filetye ignore

set wildmode=list:longest:full "cmd prompt
set completeopt=longest,menu
set colorcolumn=80  "Global color Normal 2nd

set pastetoggle=<F11>

autocmd! bufwritepost .vimrc source % " source .vimrc

syntax on


let mapleader = ","
let g:mapleader = ","

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

"move line
nnoremap <S-k> ddkP
nnoremap <S-j> ddp

"tab change
nnoremap <silent> <Leader>1 gT
nnoremap <silent> <Leader>2 gt

set showtabline=1

" select all
nnoremap <Leader>sa ggVG

"command line control
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>


"Set the charactor encoding
set fileencodings=utf-8,gbk,gb2312,gb18030,cs-bom,cp936,latin1
set encoding=utf-8
set termencoding=utf-8


call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/a.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'chrisbra/csv.vim'
Plug 'bogado/file-line'
Plug 'junegunn/fzf'
Plug 'plasticboy/vim-markdown'
Plug 'tomasr/molokai'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'myusuf3/numbers.vim'
Plug 'vim-scripts/OmniCppComplete'
Plug 'unblevable/quick-scope'
Plug 'kien/rainbow_parentheses.vim'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'godlygeek/tabular'
Plug 'majutsushi/tagbar'
Plug 'edkolev/tmuxline.vim'
Plug 'sirver/ultisnips'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'terryma/vim-multiple-cursors'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-surround'
Plug 'lervag/vimtex'
Plug 'vimwiki/vimwiki'
Plug 'othree/xml.vim'
"Plug 'valloric/youcompleteme',          { 'on' : 'YCMToggle'}
"Plug 'ervandew/supertab',               { 'on' : 'SuperTab'}
"Plug 'vim-scripts/bufexplorer.zip'
"Plug 'mattn/emmet-vim'
"Plug 'yggdroot/indentline'
"Plug 'fholgado/minibufexpl.vim'
"Plug 'kien/tabman.vim'
"Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'tpope/vim-fugitive'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" vim-scripts/a.vim
nmap <Leader>is :AT<CR>

" air-line-theme
"let g:airline_theme='molokai'
"let g:airline_theme='alduin'
"let g:airline_theme='angr'
"let g:airline_theme='ayu_mirage'
let g:airline_theme='monochrome'
"let g:airline_theme='dark'
"let g:airline#extensions#tagbar#enabled = 1 
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline#extensions#tabline#enabled = 1

" buffer-line
nnoremap <silent> <Leader>1   :bp<CR>
nnoremap <silent> <Leader>2   :bn<CR>
nnoremap <silent> <Leader>3   :bd<CR>

" ctlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.a
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'some_bad_symbolic_links',
    \ }
let g:ctrlp_user_command = 'find %s -type f'

" nerdtree
map <C-e> :NERDTreeToggle<CR>

" vim-scripts/OmniCppComplete
set tags+=~/.vim/stdcpp_tags
let OmniCpp_DefaultNamespaces = [ "std" ]

" rainbow_parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" majutsushi/tagbar
nmap <F8> :TagbarToggle<CR>

" tomasr/molokai
set bg=dark
set t_Co=256        "Number of colors, this make the molokai effective
colorscheme molokai

" edkolev/tmuxline.vim
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space': ' '}
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_present = 'vim_powerline'

" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1

" youcompleteme
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion = '<C-z>'
let g:ycm_filetype_whitelist = { "c":1, "cpp":1, "cc":1, "sh":1 }

