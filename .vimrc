set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dylanaraps/wal.vim'

Plugin 'tmhedberg/SimpylFold'

Plugin 'vim-scripts/indentpython.vim'

Bundle 'ycm-core/YouCompleteMe'

Plugin 'vim-syntastic/syntastic'

Plugin 'nvie/vim-flake8'

Plugin 'scrooloose/nerdtree'

Plugin 'kien/ctrlp.vim'

Plugin 'mhinz/vim-startify'

"Cool stuff

Plugin 'gabrielelana/vim-markdown'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'heavenshell/vim-pydocstring'
Plugin 'ap/vim-css-color'

set rtp+=~/.fzf
Plugin 'junegunn/fzf.vim'
"Bundle 'edkolev/tmuxline.vim'

"R Plugins

Plugin 'jalvesaq/Nvim-R'

Plugin 'rizzatti/dash.vim'

Plugin 'chrisbra/csv.vim'

Plugin 'gaalcaras/ncm-R'

Plugin 'sirver/UltiSnips'

Plugin 'w0rp/ale'

Plugin 'jimhester/lintr'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
syntax enable
colorscheme wal
hi Normal ctermbg=none
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu

" air-line fonts
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Stop viminfo.tmp files (hopefully)
let skip_defaults_vim=1
"set viminfo=""

" Startify options
let g:startify_custom_header = [
	\ ' =================     ===============     ===============   ========  ======== ',
	\ ' \\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . // ',
	\ ' ||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .|| ',
	\ ' || . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . || ',
	\ ' ||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .|| ',
	\ ' || . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . || ',
	\ ' ||. . ||   ||-   || ||  `-||   || . .|| ||. . ||   ||-   || ||  `|\_ . .|. .|| ',
	\ ' || . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . || ',
	\ ' ||_-  ||  .|/    || ||    \|.  || `-_|| ||_-  ||  .|/    || ||   | \  / |-_.|| ',
	\ ' ||    ||_-       || ||      `-_||    || ||    ||_-       || ||   | \  / |  `|| ',
	\ ' ||    `          || ||         `     || ||    `          || ||   | \  / |   || ',
	\ ' ||            .===  `===.         .=== .`===.         .===  /==. |  \/  |   || ',
	\ ' ||         .==    \_|-_ `===. .===    _|_   `===. .===  _-|/   `==  \/  |   || ',
	\ ' ||      .==     _-     `-_  `=     _-    `-_    `=   _-    `-_  /|  \/  |   || ',
	\ ' ||   .==     _-           `-__\._-          `-_./__-          `  |. /|  |   || ',
	\ ' ||.==     _-                                                      `  |  /==.|| ',
	\ ' ==     _-                            V I M                            \/   `== ',
	\ ' \   _-                                                                 `-_   / ',
	\ '  ``                                                                       ``   ',
	\ ]

"pydocstring and autohiding
set foldmethod=syntax
set foldnestmax=10
set foldenable
set foldlevel=0
set foldclose=all

autocmd FileType python setlocal foldenable foldmethod=syntax
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
let g:SimpylFold_docstring_preview = 1
let g:pydocstring_doq_path = '/usr/bin/doq'
let g:pydocstring_formatter = 'google'
set foldtext=getline(v:foldstart+1)

" setup for goyo & limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:goyo_width = 130
let g:goyo_height = 95
let b:code = "no"

"Toggle Goyo and Limelight on and off
function! ToggleCoding()
    if exists("b:code") && b:code == "yes"
        let b:code = "no"
        Goyo!
        Limelight!
    else
        let b:code = "yes"
        Goyo
        Limelight
    endif
endfunction

"remove weird background change on exit
function s:goyo_enter()
    hi! VertSplit guibg=NONE
endfunction

function s:goyo_leave()
    hi Normal guibg=NONE ctermbg=NONE
    hi NonText ctermbg=none ctermfg=NONE
    hi EndOfBuffer ctermbg=none
    hi LineNr ctermbg=none
endfunction


autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" setup for tagbar
nmap <t> :TagbarToggle<CR>

" enable mouse scroll
set mouse=a

" toggle number lines
:nnoremap <C-n> :set number!<CR>

let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '',
    \ 'right' : '',
    \ 'right_alt' : '',
    \ 'space' : ' '}

let g:tmuxline_preset = {
    \'a'    : '#S',
    \'b'    : ['', '#(whoami)'],
    \'win'  : ['#I #W'],
    \'cwin' : ['#I #W #F'],
    \'y'    : ['%a', '%m/%d/%y'],
    \'z'    : '#H'}
