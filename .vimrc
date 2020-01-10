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
Plugin 'tpope/vim-fugitive'                             " Git integration
Plugin 'vim-syntastic/syntastic'                        " Syntax checking
Plugin 'scrooloose/nerdtree'                            " Tree view
" Plugin 'scrooloose/nerdcommenter'                       " Comment/Uncomment shortcut
" Plugin 'w0rp/ale'                                       " Linter
" Plugin 'maximbaz/lightline-ale'                         " Add ALE linter information to status bar
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
Plugin 'tpope/vim-obsession'                            " Extends vim session functionality
Plugin 'dhruvasagar/vim-prosession'                     " Extends vim session functionality - :Obsess, :Prosession
Plugin 'junegunn/fzf'                                   " fzf support in vim
Plugin 'junegunn/fzf.vim'
Plugin 'deoplete-plugins/deoplete-jedi'                 " Deoplete Python support
Plugin 'deoplete-plugins/deoplete-go'                   " Deoplete Go support
Plugin 'deoplete-plugins/deoplete-dictionary'           " Deoplete English support
Plugin 'deoplete-plugins/deoplete-clang'                " Deoplete C support through clang
Plugin 'deoplete-plugins/deoplete-docker'               " Deoplete Docker support
Plugin 'deoplete-plugins/deoplete-zsh'                  " Deoplete Zsh support
Plugin 'lvht/phpcd.vim'                                 " Deoplete PHP support
Plugin 'voldikss/vim-mma'                               " Deoplete Mathematica support
Plugin 'racer-rust/vim-racer'                           " Racer for Rust autocompletion - cargo install racer
Plugin 'tomtom/tcomment_vim'
Plugin 'honza/vim-snippets'                             " Vim snippets (autocomplete snippets)
Plugin 'SirVer/ultisnips'                               " Ultisnips bindings for vim snippets (autocomplete snippets)
if has('nvim')
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif

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
" ------------------------------------------------------------------------------

" Custom keybindings -----------------------------------------------------------
let mapleader="t"                                          " Set a prefix key
nnoremap <leader>i :set list!<CR>                          " Toggle show invisibles
nnoremap <leader>s :setlocal spell! spelllang=en_us<CR>    " Toggle spellcheck
nnoremap <leader>l :Limelight!! 0.8<CR>                    " Toggle Limelight
map <leader>t :NERDTreeToggle<CR>                          " Toggle NerdTree
nnoremap o o<Esc>                                          " Bind insert newline to insert newline <esc>
nnoremap O O<Esc>                                          " bc by default insert newline enters into insert mode

"split navigations
nnoremap <C-J> <C-W><C-J>                                  " Move split below
nnoremap <C-K> <C-W><C-K>                                  " Move split above
nnoremap <C-L> <C-W><C-L>                                  " Move split right
nnoremap <C-H> <C-W><C-H>                                  " Move split left
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Default Keybinding Notes:
" After selection, '+' or '-' will expand using vim expand region
" <leader>cc to comment a selection with nerdcommenter
" cs<symbol to replace><symbol to replace with> Replace a symbol surrounding items in line for a different symbol
" ds<symbol> to delete a surrounding symbol
" :Dispatch <command> Dispatch a command to terminal - used for compilation asynchonously
" Jedi has its own commands <C-space> for completion, <leader>d Goto definition, <leader>g Typical goto, and more
" Fugitive has its own set of git commands
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
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Expand lightline using lightline ALE to display linter information--ALE Stuff
" let g:lightline.component_expand = {
      " \  'linter_checking': 'lightline#ale#checking',
      " \  'linter_warnings': 'lightline#ale#warnings',
      " \  'linter_errors': 'lightline#ale#errors',
      " \  'linter_ok': 'lightline#ale#ok',
      " \ }
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

" Nerdcommenter ---------------------------------------------------------------- Replaced by tcomment
" Add spaces after comment delimiters by default
" let g:NERDSpaceDelims = 1
"
" Use compact syntax for prettified multi-line comments
" let g:NERDCompactSexyComs = 1
"
" Align line-wise comment delimiters flush left instead of following code indentation
" let g:NERDDefaultAlign = 'left'
"
" Allow commenting and inverting empty lines (useful when commenting a region)
" let g:NERDCommentEmptyLines = 1
"
" Enable trimming of trailing whitespace when uncommenting
" let g:NERDTrimTrailingWhitespace = 1
"
" Enable NERDCommenterToggle to check all selected lines is commented or not
" let g:NERDToggleCheckAllLines = 1
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

" Linters for ALE --------------------------------------------------------------
" let g:ale_linters = {
" \   'python' : ['flake8'],
" \   'markdown': ['proselint'],
" \}
"
" let g:ale_set_highlights = 0 " Disable ALE highlighting
"
" Remove ALE's highlighting for warning and error indicators (>> and --)
"highlight clear ALEErrorSign
" highlight clear ALEWarningSign
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

" Deoplete ----------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1 " Change to manual trigger
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Ignore omni php source
let g:deoplete#ignore_sources = get(g:, 'deoplete#ignore_sources', {})
let g:deoplete#ignore_sources.php = ['omni']
" -------------------------------------------------------------------------------

" Snippets Copmletion -----------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-f>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" -------------------------------------------------------------------------------


" Omnifuncs -----------------------------------------------------------------------
set omnifunc=syntaxcomplete#Complete
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" -------------------------------------------------------------------------------

" Mathematica Font Item Smart Conceal -------------------------------------------
let g:mma_candy = 1
" -------------------------------------------------------------------------------

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

" End .vimrc
