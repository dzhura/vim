" TODO add indexing & navigation (some naviation was introduced by YCM
" TODO add snippets
"
""Use 'configuration', 'key maps' and '<PluginName>' for search

colorscheme desert

set nocompatible	" required for vundle
filetype off		" required for vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'	" Vundle manage itself, required for vundle

Plugin 'Valloric/YouCompleteMe'	" Auto completing for various languages

Plugin 'tpope/vim-fugitive'	" Git wrapper

Plugin 'vim-scripts/L9'		" Functions and commands for prgramming

Plugin 'vim-scripts/FuzzyFinder' 

Plugin 'Lokaltog/vim-easymotion'" Simpler way to use some motions in vim

Plugin 'bling/vim-airline'	" Lean & mean status/tabline for vim

Plugin 'Valloric/ListToggle'	" Toggling the display of the quickfix list and the location list

" Was installed by 'yum install vim-command-t'
" DO NOT unquote that!
" Plugin 'wincent/command-t'	" Opening files and buffers with a min number of keystrokes

" all plugins MUST be added before the following line
call vundle#end()

filetype plugin indent on	" required for vundle


""General configuration

set syntax=c++.doxygen	" turning on doxygen formatting

set confirm		" :q, :qa, :w operations conformations
set hidden		" allow hidden buffers
			" changes are not save until :w is applyed

set hlsearch		
set ignorecase
 
" Do not use error bells
set noerrorbells visualbell t_vb=

set cmdheight=2

set number		" Display line numbers on the left

set showcmd		" Show partial command in the last
			" line of the screen.

" Gvim options
set guioptions-=m  	" Remove menu bar
set guioptions-=T  	" Remove toolbar
set guioptions-=b	" Remove bottom scrollbar
set guioptions-=r	" Remove right-hand scrollbar

" Make vim to search for include files in
" TODO Not always works. Is there better solution?
let &path.="./src/include, ./include, ../include, /usr/include"


""YouCompleteMe configuration and key maps
"
" Set a path to a global .ycm_extra_conf
" Ycm will use it, if a project dosent have own one
let g:ycm_global_ycm_extra_conf="~/.vim/.ycm_extra_conf.py"

let g:ycm_warning_symbol = 'w>'
let g:ycm_error_symbol = 'e>'

let g:ycm_autoclose_preview_window_after_insertion = 1

nnoremap <leader>y :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>pg :YcmCompleter GoTo<cr>
nnoremap <leader>pd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>pc :YcmCompleter GoToDefinition<CR>
" Short diagnostic msg - cursor is on the line with error
" Detailed diagnostic msg - <leader>d key
" Full diagnostic msg - :lopen/:lclose


""Air-line configuration

let g:airline#extensions#tabline#enabled=1


""Netrw configuration and key maps

nnoremap <Tab> :Explore <CR>


""ListToggle configuration and key maps

let g:lt_location_list_toggle_map = '<leader>i'
let g:lt_location_list_toggle_map = '<leader>u'


""Command-T configuration and key maps

set wildignore+=*.o,.svn,.git,*.so

let g:CommandTWildIgnore=&wildignore

nnoremap <leader>t :CommandT<cr>
nnoremap <leader>n :CommandTBuffer<cr>
nnoremap <leader>' :CommandTFlush<cr>


""General key maps

" Fast saving
nnoremap <leader>w :w<cr>

" Map Y to act like D and C, i.e. to yank until EOL, rather
" that act as yy, which is the default
map Y y$


" Turn off highlight until next search
nnoremap <C-L> :nohl <CR> <C-L>

" Print list of file names, related to buffers
" Suggest to switch buffer by selecting a number
nnoremap <F4> :buffers <CR>:buffer<Space>

" Mappings to access buffers
" \b,\f,\g - go back, go forward, last-used
nnoremap <Leader>b :bp <CR>
nnoremap <Leader>f :bn <CR>
nnoremap <Leader>g :b# <CR>

" Easy commands to move between windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
