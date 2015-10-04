" Alexis Vincent .vimrc

" Launch Config {{{ 

set nocompatible

" }}}
" Vundle {{{

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'bling/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'othree/yajs.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Chiel92/vim-autoformat'
Plugin 'elzr/vim-json'
Plugin 'jiangmiao/auto-pairs'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'geoffharcourt/one-dark.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'autoswap.vim'
Plugin 'moll/vim-node'
Bundle 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
 "}}}
" Colors {{{

syntax enable           " enable syntax processing
colorscheme onedark

" }}}
" Misc {{{

set ttyfast                     " faster redraw
set backspace=indent,eol,start
set exrc	"Allow Project specific .vimrc

" Autoreload vimrc
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END 
" }}}
" Spaces & Tabs {{{

set tabstop=2           " 4 space tab
set softtabstop=2       " 4 space tab
set shiftwidth=2
set modelines=1
filetype plugin indent on
set autoindent

" }}}
" UI Layout {{{

set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
set lazyredraw
set showmatch           " higlight matching parenthesis
set guifont=Menlo:h14  " Use 14pt Monaco
set linespace=8			" Better line-height

" }}}
" Searching {{{

set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches

" }}}
" Folding {{{

set foldmethod=marker   " fold based on marker
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap f za
set foldlevelstart=10    " start with fold level of 1

" }}}
" Line Shortcuts {{{

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"nnoremap j gj
"nnoremap k gk
"nnoremap B ^
"nnoremap E $
"nnoremap $ <nop>
"nnoremap ^ <nop>
"nnoremap gV `[v`]
"onoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
"xnoremap an :<c-u>call <SID>NextTextObject('a', 'f')<cr>
"onoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
"xnoremap in :<c-u>call <SID>NextTextObject('i', 'f')<cr>
 
"onoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
"xnoremap al :<c-u>call <SID>NextTextObject('a', 'F')<cr>
"onoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
"xnoremap il :<c-u>call <SID>NextTextObject('i', 'F')<cr>
" }}}
" Shortcuts {{{

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

noremap <D-r> :TernRename<CR>

" }}}
" Leader Shortcuts {{{
let mapleader=","
"nnoremap <leader>m :silent make\|redraw!\|cw<CR>
"nnoremap <leader>w :NERDTree<CR>
"nnoremap <leader>u :GundoToggle<CR>
"nnoremap <leader>h :A<CR>
"nnoremap <leader>ev :vsp $MYVIMRC<CR>
"nnoremap <leader>ez :vsp ~/.zshrc<CR>
"nnoremap <leader>sv :source $MYVIMRC<CR>
"nnoremap <leader>l :call ToggleNumber()<CR>
"nnoremap <leader><space> :noh<CR>
"nnoremap <leader>s :mksession<CR>
"nnoremap <leader>a :Ag 
"nnoremap <leader>c :SyntasticCheck<CR>:Errors<CR>
"nnoremap <leader>1 :set number!<CR>
"nnoremap <leader>d :Make! 
"nnoremap <leader>r :call RunTestFile()<CR>
"nnoremap <leader>g :call RunGoFile()<CR>
"vnoremap <leader>y "+y
"vmap v <Plug>(expand_region_expand)
"vmap <C-v> <Plug>(expand_region_shrink)
"inoremap jk <esc>
" }}}
" Airline {{{
set encoding=utf-8
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
set laststatus=2
let g:airline_theme='bubblegum'
" }}}
" CtrlP {{{
"let g:ctrlp_match_window = 'bottom,order:ttb'
"let g:ctrlp_switch_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
" }}}
" NERDTree {{{

"let NERDTreeIgnore = ['\.pyc$', 'build', 'venv', 'egg', 'egg-info/', 'dist', 'docs']
map <C-n> :NERDTreeToggle<CR>	" Toggle NERDTree with CTRL-n
let NERDTreeShowHidden=1	"Show Hidden files

" }}}
" Session {{{
let g:session_autosave = 'yes'
" }}}
" YouCompleteMe {{{
" http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" }}}
" SuperTab {{{
let g:SuperTabDefaultCompletionType = '<C-n>'
" }}}
" Syntastic {{{
let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_ignore_files = ['.java$']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }}}
" Tmux {{{   
"if exists('$TMUX') " allows cursor change in tmux mode
"    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
"else
"    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
"endif
"" }}}
" UltiSnips {{{

" UltiSnips completion function that tries to expand a snippet. If there's no
" snippet for expanding, it checks for completion window and if it's
" shown, selects first element. If there's no completion window it tries to
" jump to next placeholder. If there's no placeholder it just returns TAB key 
"function! g:UltiSnips_Complete()
  "call UltiSnips#ExpandSnippetOrJump()
  "if g:ulti_expand_or_jump_res == 0
    "if pumvisible()
      "return "\<C-N>"
    "else
      "return "\<TAB>"
    "endif
  "endif

  "return ""
"endfunction

"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

"let g:UltiSnipsExpandTrigger="<D-Enter>"
"let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


"http://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" }}}
" MacVim {{{
set guioptions-=r 
set guioptions-=L
let macvim_skip_colorscheme = 1
" }}}
" Markdown Preview {{{
filetype plugin on
" }}}
" AutoGroups {{{
"augroup configgroup
"    autocmd!
"    autocmd VimEnter * highlight clear SignColumn
"    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md,*.rb :call <SID>StripTrailingWhitespaces()
"    autocmd BufEnter *.cls setlocal filetype=java
"    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
"    autocmd BufEnter Makefile setlocal noexpandtab
"    autocmd BufEnter *.sh setlocal tabstop=2
"    autocmd BufEnter *.sh setlocal shiftwidth=2
"    autocmd BufEnter *.sh setlocal softtabstop=2
"augroup END
" }}}
" Backups {{{
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
" }}}
" Custom Functions {{{
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc


" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

function! <SID>CleanFile()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %!git stripspace
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" }}} 

set secure	"Don't allow malicious per project .vimrc's to run
" vim:foldmethod=marker:foldlevel=0
