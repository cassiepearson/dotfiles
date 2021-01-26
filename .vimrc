" Begin .vimrc

" Vundle, Plugins ---------------------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" MY PLUGINS
Plugin 'flazz/vim-colorschemes'                         " Ton of colorschemes
Plugin 'Valloric/YouCompleteMe'                         " You complete me
Plugin 'vim-syntastic/syntastic'                        " Syntax checking
Plugin 'scrooloose/nerdtree'                            " Tree view
Plugin 'terryma/vim-expand-region'                      " Improved Selection
Plugin 'ryanoasis/vim-devicons'                         " Add icon/glyph support to vim
Plugin 'Yggdroot/indentLine'                            " Draw indent lines
Plugin 'itchyny/lightline.vim'                          " Status bar
Plugin 'junegunn/limelight.vim'                         " Fancy text lighting
Plugin 'rust-lang/rust.vim'                             " Rust support
Plugin 'tpope/vim-surround'                             " Fixing surrounding symbols
Plugin 'bling/vim-bufferline'                           " Show the list of buffers in the command bar
Plugin 'mattn/webapi-vim'                               " Allow vim integration with WebUIs
Plugin 'junegunn/goyo.vim'                              " Distraction free vim - I rarely use it
Plugin 'tpope/vim-dispatch'                             " Dispatch commands
Plugin 'davidhalter/jedi-vim'                           " Python Jedi integration
Plugin 'nvie/vim-flake8'                                " Python Flake8 PEP8 linter
"Plugin 'tpope/vim-obsession'                            " Extends vim session functionality
"Plugin 'dhruvasagar/vim-prosession'                     " Extends vim session functionality - :Obsess, :Prosession
Plugin 'junegunn/fzf'                                   " fzf support in vim
Plugin 'junegunn/fzf.vim'
"Plugin 'psf/black'                                      " Python Black in vim - A python autoformatter
" Plugin 'voldikss/vim-mma'                               " Deoplete Mathematica support
Plugin 'racer-rust/vim-racer'                           " Racer for Rust autocompletion - cargo install racer
Plugin 'tomtom/tcomment_vim'
Plugin 'honza/vim-snippets'                             " Vim snippets (autocomplete snippets)
Plugin 'SirVer/ultisnips'                               " Ultisnips bindings for vim snippets (autocomplete snippets)
Plugin 'easymotion/vim-easymotion'                      " Vim easy motion

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
" -------------------------------------------------------------------------------------------------------------

" zsh - Set shell in vim command prompt to zsh ----------------------------------
let shell='/bin/zsh -i'
" -------------------------------------------------------------------------------

" Font -------------------------------------------------------------------------
set encoding=utf-8
set guifont=Hack\ Nerd\ Font\ Mono\ Regular\ 14
" ------------------------------------------------------------------------------

" Coloring ---------------------------------------------------------------------
colorscheme iceberg               " happy_hacking, neodark, iceberg, PaperColor
syntax enable                     " Enable syntax processing (highlighting)
" let g:indentLine_setColors = 0    " Disable default indentLine color, let theme control indentLine color
" ------------------------------------------------------------------------------

" Whitespace -------------------------------------------------------------------
set tabstop=4         " # of visual spaces per tab
set softtabstop=4     " # of spaces in a tab
set shiftwidth=4      " Autoindent next line
set expandtab         " Use soft tabs
set autoindent
set smartindent
set pastetoggle=<F8>  " Toggle paste mode (paste without indent)
filetype indent on    " Allow language/filetype specific indent files
let g:indentLine_char_list = ['|', '¦', '┆', '┊'] " Set indent character list for indentLine
" ------------------------------------------------------------------------------

" Basic UI Conf ----------------------------------------------------------------
set number          " Show line numbers
set relativenumber  " Show relative line numbers
" set cursorline      " Highlight current line
"set lazyredraw      " Only redraw screen when needed - faster macros
"set wildmenu        " Vim native tab autocomplete
"set wildmode=full:list
set showmatch       " Highlight the matching, cursor on  ( highlights )
" ------------------------------------------------------------------------------

" Searching --------------------------------------------------------------------
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches
set ignorecase
set smartcase           " Use case if any caps used
" ------------------------------------------------------------------------------

" Editor Settings --------------------------------------------------------------
set noswapfile                       " Turn off swap files
set mouse=a                          " Turn on mouse support in vim (why was this off?)
" set list                             " Show invisible characters on start
set listchars=tab:\|-,eol:¬,trail:•,nbsp:•,extends:>,precedes:<,space:• " Set a list of invisible characters and the symbols to show for them
" Set a variable with the OS name
let kernel = substitute(system('uname'), "\n", "", "")
" ------------------------------------------------------------------------------

" Custom keybindings -----------------------------------------------------------
" Set a prefix key
let mapleader="t"
" Toggle show invisibles
nnoremap <leader>i :set list!<CR>
" Toggle spellcheck
nnoremap <leader>s :setlocal spell! spelllang=en_us<CR>
" Toggle Limelight
nnoremap <leader>ll :Limelight!! 0.8<CR>
" Toggle lopen - Not a true toggle since that requires a lot of vim scripting
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>
" Toggle NerdTree
map <leader>t :NERDTreeToggle<CR>
" Bind insert newline to insert newline <esc> bc by default insert newline enters into insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>
" Map fzf
nnoremap <leader>ff :Files ~<CR>
" Shift j, Shift k for using expand plugin - A way to smart select sections
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)
" Add a vertical split shortcut
nnoremap <leader>vv :vsplit<CR>
" Add fzf split shortcut
nnoremap <leader>fv :vsplit <bar> Files ~<CR>
nnoremap <leader>fh :split <bar> Files ~<CR>

" Indent shortcut
nnoremap <leader>ii >><CR>
nnoremap <leader>di <<<CR>

"split navigations
" Move split below
nnoremap <C-J> <C-W><C-J>
" Move split above
nnoremap <C-K> <C-W><C-K>
" Move split right
nnoremap <C-L> <C-W><C-L>
" Move split left
noremap <C-H> <C-W><C-H>
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" ------------------------------------------------------------------------------

" Hex Mode Toggle --------------------------------------------------------------
" Hexmode keybindings
nnoremap <leader>hh :Hexmode<CR>

" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    silent :e " this will reload the file without trickeries 
              "(DOS line endings will be shown entirely )
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction
" ------------------------------------------------------------------------------

" Clipboard --------------------------------------------------------------------
" Allow for the vim register clipboard to be the system clipboard
if has('macunix')
	set clipboard=unnamed
else
	set clipboard=unnamedplus
endif
" ------------------------------------------------------------------------------

" Lightline Config -------------------------------------------------------------
set noshowmode    " Turn off vim default mode showing - Replaced by lightline
set laststatus=2  " Always show status line
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \ },
      \ }

" Specify what information to display and what color
" let g:lightline.component_type = {
      " \     'linter_checking': 'left',
      " \     'linter_warnings': 'warning',
      " \     'linter_errors': 'error',
      " \     'linter_ok': 'left',
      " \ }
" Add component to the lightline
" let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }
" ------------------------------------------------------------------------------

" NerdTree ---------------------------------------------------------------------
" The following line closes vim if the only remaining window is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ------------------------------------------------------------------------------

" Rust Specific Settings -------------------------------------------------------
let g:rustfmt_autosave = 1                              " Autorun rustfmt on file save
"let g:rust_clip_command = 'xclip -selection clipboard'  " Use :RustPlay in linux to send to the rust playpen
let g:rust_clip_command = 'pbcopy'                      " Use :RustPlay in MacOS to send to the rust playpen
" Setup cargo build bindings
autocmd FileType rust compiler cargo
" ------------------------------------------------------------------------------

" Syntastic --------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Remove the highlighting from the warning and error messageis
let g:syntastic_enable_highlighting = 0
highlight SyntasticWarning NONE
highlight SyntasticError NONE
" ------------------------------------------------------------------------------

" fzf --------------------------------------------------------------------------
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }
" ------------------------------------------------------------------------------

" Snippets Copmletion -----------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" -------------------------------------------------------------------------------
"
" Rust Racer Config -------------------------------------------------------------
set hidden
let g:racer_cmd = "/Users/christophernegrich/.cargo/bin/racer"
" -------------------------------------------------------------------------------

" Icon Configuration ------------------------------------------------------------
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 0
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 2
" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" -------------------------------------------------------------------------------

" Vim Expand Configuration - For smart visual selections, mapped to J,K ---------
" Default settings. (NOTE: Remove comments in dictionary before sourcing)
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'i"'  :0,
      \ 'i''' :0,
      \ 'i]'  :1, 
      \ 'ib'  :1, 
      \ 'il'  :0, 
      \ 'ip'  :0,
      \ 'ie'  :0, 
      \ }
" -------------------------------------------------------------------------------

" End .vimrc
