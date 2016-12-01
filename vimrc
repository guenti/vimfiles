" vim: set ts=4 sts=4 sw=4 et tw=80:

set nocompatible " be iMproved

call plug#begin('~/.vim/plugged')

" PLUGINS {{{

" Colors begin ----------------------------------------------------------------
"The stunning, awesome, greatest of all: Solarized. :)
Plug 'altercation/vim-colors-solarized'
" Colors end ------------------------------------------------------------------

" UI --------------------------------------------------------------------------
" a better statusline
Plug 'vim-airline/vim-airline'
" Airline themes are now in a separated repro
Plug 'vim-airline/vim-airline-themes'
" NerdTree
Plug 'scrooloose/nerdtree'
" NerdTree git support
Plug 'Xuyuanp/nerdtree-git-plugin'
" NerdTree on tabs
Plug 'jistr/vim-nerdtree-tabs'
" UI end ----------------------------------------------------------------------

" Tools -----------------------------------------------------------------------
" Required by pdv
Plug 'tobyS/vmustache'
" git support
Plug 'tpope/vim-fugitive'
" Git syntax
Plug 'tpope/vim-git'
" Shows a git diff in the 'gutter' (sign column)
Plug 'airblade/vim-gitgutter'
" A gitk clone for Vim
Plug 'gregsexton/gitv'
" Vim surround
Plug 'tpope/vim-surround'
" Vim repeat
Plug 'tpope/vim-repeat'
" SuperTab
Plug 'ervandew/supertab'
" Syntastic
Plug 'scrooloose/syntastic'
" UltiSnips
Plug 'SirVer/ultisnips'
" Tagbar
Plug 'majutsushi/tagbar'
" Another (better) tag plugin
Plug 'ludovicchabant/vim-gutentags'
" Gundo
Plug 'sjl/gundo.vim'
" Trailing whitespaces
Plug 'bronson/vim-trailing-whitespace'
" Indent indicators
Plug 'ryanoasis/indentLine'
" Closes and deletes pairs of chars (brackets, parens, quotes, etc).
Plug 'jiangmiao/auto-pairs'
" Tools end -------------------------------------------------------------------

" PHP -------------------------------------------------------------------------
" Better syntax file
Plug '2072/vim-syntax-for-PHP'
" A newer indet file fpr PHP
Plug '2072/PHP-Indenting-for-VIm'
" Support for PHP namespaces
Plug 'arnaud-lb/vim-php-namespace'
" Improved PHP omni-completion
Plug 'shawncplus/phpcomplete.vim'
" PDV
Plug 'tobyS/pdv'
" Better PHP folding
Plug 'swekaj/php-foldexpr.vim'
" PHP-CS-FIXER support
Plug 'guenti/vim-php-cs-fixer'
" PHP end ---------------------------------------------------------------------

" Ruby + Rails ----------------------------------------------------------------
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
" Ruby + Rails end ------------------------------------------------------------

" Go lang ---------------------------------------------------------------------
Plug 'fatih/vim-go'
" Go lang end -----------------------------------------------------------------

" Misc ------------------------------------------------------------------------
" EditorConfig support (Install the editorconfig-core first!)
Plug 'editorconfig/editorconfig-vim'
" Better JSON file syntax
Plug 'elzr/vim-json'
" HTML5 syntax
Plug 'othree/html5.vim'
" Less support
Plug 'groenewege/vim-less'
" Enhanced Javascript support
Plug 'pangloss/vim-javascript'
" Add CSS3 syntax support to Vim's built-in syntax/css.vim.
Plug 'hail2u/vim-css3-syntax'
" Misc end --------------------------------------------------------------------

" !!!Always load this Plug at least!!!
" Better icons for vim-airline, nerd-tree etc.
Plug 'ryanoasis/vim-devicons'

" PLUGINS END }}}

" Vundle end
call plug#end()

filetype plugin indent on " required

" BASICS {{{

" automatically syntax highlightning
syntax enable

" force utf-8 encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set fileformats=unix,dos

" Set the mapleader and the local mapleader to ,
let mapleader=","
let maplocalleader=","

set laststatus=2
set backspace=indent,eol,start
set showcmd
set showmode
set hidden
set modeline
set wrap linebreak nolist
set showbreak=~
set listchars=tab:▸\ ,eol:¬
set wildmenu
set wildmode=list:longest
set wildmenu
set wildmode=list:longest
set foldmethod=marker
set indentexpr=
set smartindent
set completeopt=longest,menuone
set number
set splitbelow
set splitright

" highlight matching paranthesis etc.
set showmatch
set matchtime=2

" Highlight cursorline and show colorcolumn only in insert mode.
autocmd InsertLeave * setlocal nocursorline
autocmd InsertLeave * setlocal colorcolumn=0
autocmd InsertEnter * setlocal cursorline
autocmd InsertEnter * setlocal colorcolumn=80

" default tabstop, shiftwidth etc
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
retab

set t_Co=256
set background=dark
colorscheme aurora

" no backups
set nobackup
set nowritebackup
set noswapfile

" Undo history between sessions
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Jump 5 lines when running out of the screen
set scrolljump=5
" Indicate jump out of the screen when 3 lines before end of the screen
set scrolloff=3

" Toggle paste with <ins>
set pastetoggle=<F2>

" Search
set hlsearch " Hightlighting matches
set incsearch " Incremental search
set ignorecase " Be case insensitive in searches
set smartcase " If upper case letters occur, be case insensitive
set infercase " Infer the current case in insert completion
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
    \.sass-cache,*.class,*.scssc,*.cssc,*.lessc
nnoremap <Leader><Space> :noh<CR> " Clear out the search
" Replace
set gdefault " Setting the /g param to default. Less typing :)

" I like to open help in a vertical split
au BufRead,BufEnter */doc/* wincmd L

" BASICS END }}}

" PLUGIN CONFIGURATION {{{

" SuperTab --------------------------------------------------------------------
let g:SuperTabDefaultCompletionType = '<C-x><C-o>'

" Airline ---------------------------------------------------------------------
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
" Airline theme
"let g:airline_theme = 'solarized'
let g:airline_theme = 'aurora'
" whitspace addon
let g:airline#extensions#whitespace#enabled = 1
" Enable buffer listing on top
let g:airline#extensions#tabline#enabled = 1
" Show only filenames on top
let g:airline#extensions#tabline#fnamemod = ':t'

" NERDTree --------------------------------------------------------------------
map <F4> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:NERDTreeShowHidden=1
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Gundo -----------------------------------------------------------------------
nnoremap <F8> :GundoToggle<CR>
let g:gundo_prefer_python3 = 1

" Fugitive --------------------------------------------------------------------
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>ge :Gedit<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gb :Gbrowse<CR>

" Gutentags -------------------------------------------------------------------
let g:gutentags_exclude=['*.css', '*.html', '*.js', '*.phtml']

" Tagbar ----------------------------------------------------------------------
nnoremap <F3> :TagbarToggle<CR>

" Trailing whitespaces --------------------------------------------------------
nnoremap <Leader>ws ::FixWhitespace<CR>

" Syntastic config ------------------------------------------------------------
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
let g:syntastic_disabled_filetypes=['phtml']
" phpmd will be used in a CI env
let g:syntastic_php_checkers = ['php', 'phpcs']
nnoremap <F5> :SyntasticToggleMode<CR>
nnoremap <F6> :SyntasticCheck<CR>

" UltiSnips
let g:UltiSnipsListSnippets = "<M-Tab>"
" Set a custom snippets directory
let g:UltiSnipsSnippetsDir = $HOME . "/.vim/ultisnippets/"
let g:UltiSnipsSnippetDirectories = ["ultisnippets"]
let g:UltiSnipsExpandTrigger = "<Tab>"
let g:UltiSnipsListSnippets = "<M-Tab>"

" PHP namespaces --------------------------------------------------------------
" Automatically adds the corresponding use statement for the class under the cursor.
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
" Expands the class name under the cursor to its fully qualified name.
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
" Sort existing use statements alphabetically
autocmd FileType php inoremap <Leader>s <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

" Vim less support ------------------------------------------------------------
" .less to .css , lessc is required.
autocmd FileType less nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><Space>

" indentLine ------------------------------------------------------------------
let g:indentLine_faster = 1

" PDV -------------------------------------------------------------------------
let g:pdv_template_dir = $HOME ."/.vim/templates_snip"
map <C-P> :call pdv#DocumentWithSnip()<CR>

" EditorConfig support
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" php-cs-fixer
" If you want to define specific fixers:
"let g:php_cs_fixer_fixers_list = "linefeed,short_tag,indentation"
let g:php_cs_fixer_enable_default_mapping = 1     	" Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    	" Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    	" Return the output of command if 1, else an inline information.
" PLUGIN CONFIGURATION END }}}

" MAPPINGS {{{

" Remap the fucking F1 key :) If I need help, I type :help!
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" Disable arrow keys!
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

" Open/close all folds
nnoremap <Leader>f zR
nnoremap <Leader>cf zM

" Toggle line numbers
nnoremap <Leader># :set nu!<CR>

" Movement by file line instead of screen line
nnoremap j gj
nnoremap k gk

" "Clicking" links in help etc. with F10
map <F10> <C-]>

" Using <F9> for toggle folding and in visual mode mark a fold.
inoremap <F9> <C-o>za
nnoremap <F9> za
onoremap <F9> <C-c>za
vnoremap <F9> zf

" mapping <ESC> to jj in insert mode
inoremap jj <Esc>

" Enable customized non-visible character display
nnoremap <Leader>n :set list!<CR>

" Save file as root using sudo
cnoremap w!! w !sudo tee % >/dev/null

" Some usefull mappings for open files
map <Leader>ew :e <C-r>=expand("%:p:h") . "/" <CR>
map <Leader>es :sp <C-r>=expand("%:p:h") . "/" <CR>
map <Leader>ev :vsp <C-r>=expand("%:p:h") . "/" <CR>

" Open a new empty buffer
nnoremap <Leader>bu :enew<CR>
" Move to the next buffer
nnoremap <Leader>nb :bnext<CR>
" Move to the previous buffer
nnoremap <Leader>pb :bprevious<CR>
" Close the current buffer and move to the prevoius one
nnoremap <Leader>db :bp <BAR> bd #<CR>
" Show all open buffers (it's more consistent)
nnoremap <Leader>lb :ls<CR>

" Tabs
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tb :tabprev<CR>
nnoremap <Leader>td :tabclose<CR>
nnoremap <Leader>ta :tabnew<CR>

" Open an new (empty) vertical split window and switch over to it.
nnoremap <Leader>sw :botright vnew<CR><C-w>l

" Mapping fold tag (usefull with HTML/XML and so on)
nnoremap <Leader>ft Vatzf

" Moving around split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" MAPPINGS }}}

" FILETYPE SETTINGS {{{

" Indentation of these languages is fussy over tabs and spaces
au FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au FileType php setlocal ts=4 sts=4 sw=4 expandtab
au FileType css setlocal ts=2 sts=2 sw=2 expandtab
au FileType html setlocal ts=2 sts=2 sw=2 expandtab
au FileType xml setlocal ts=2 sts=2 sw=2 expandtab
au FileType javascript setlocal ts=2 sts=2 sw=2 expandtab
au FileType pgsql setlocal ts=2 sts=2 sw=2 expandtab
au FileType python setlocal ts=8 sts=8 sw=8 expandtab
au FileType ruby setlocal ts=2 sts=2 sw=2 expandtab

" Git commit messages
au Filetype gitcommit setlocal nospell textwidth=72

" Configure the concealing behaviour for json files
au InsertEnter *.json setlocal conceallevel=2 concealcursor=
au InsertLeave *.json setlocal conceallevel=2 concealcursor=inc

" associate *.phtml with html filetype
au BufRead,BufNewFile *.phtml setfiletype php

" use autocomplete with php files
au FileType php setlocal omnifunc=phpcomplete#CompletePHP

" FILETYPE SETTINSG END }}}

 " ABBREVIATIONS {{{

iab Xmg Mario Guenterberg <mg@poolbyte-solutions.de>
iab Xguenti Mario Guenterberg <mario.guenterberg@googlemail.com>
iab Xvim vim: set ts=4 sts=4 sw=4 et tw=80:

iab fucntion function
iab funciton function
iab publci public

" ABBREVIATIONS END }}}

" FUNCTIONS {{{

" Restore line number and column if reentering a file after having edited it
" at least once. For this to work .viminfo in the home dir has to be writable by the user.
let g:restore_position_ignore = '.git/COMMIT_EDITMSG'
au BufReadPost * call RestorePosition()

func! RestorePosition()
    if exists("g:restore_position_ignore") && match(expand("%"), g:restore_position_ignore) > -1
        return
    endif

    if line("'\"") > 1 && line("'\"") <= line("$")
         exe "normal! g`\""
    endif
endfunc

" Override syntax coloring in phpdoc blocks
augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

func! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunc

" FUNCTIONS END }}}
