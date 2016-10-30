# MyVim

## Introduction
That's my personal Vim setup. Use this at yout own risk. :)

## Installation
```bash
$ mkdir $HOME/.vim
$ mkdir $HOME/.vim/bundle
```

```bash
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

```bash
$ vim +PluginInstall +qall
```

Happy Vim-ing. :)

## Plugins included
" The awesome Darcula colorscheme
Plugin 'blueshirts/darcula'
" a better statusline
Plugin 'vim-airline/vim-airline'
" Airline themes are now in a separated repro
Plugin 'vim-airline/vim-airline-themes'
" NerdTree
Plugin 'scrooloose/nerdtree.git'
" NerdTree git support
Plugin 'Xuyuanp/nerdtree-git-plugin'
" NerdTree on tabs
Plugin 'jistr/vim-nerdtree-tabs'
" git support
Plugin 'tpope/vim-fugitive'
" Git syntax
Plugin 'tpope/vim-git'
" Vim surround
Plugin 'tpope/vim-surround'
" Vim repeat
Plugin 'tpope/vim-repeat'
" SuperTab
Plugin 'ervandew/supertab'
" Syntastic
Plugin 'scrooloose/syntastic'
" UltiSnips
Plugin 'SirVer/ultisnips'
" Required by PDV
Plugin 'tobyS/vmustache.git'
" Tagbar
Plugin 'majutsushi/tagbar.git'
" Another (better) tag plugin
Plugin 'ludovicchabant/vim-gutentags'
" Gundo
Plugin 'sjl/gundo.vim'
" Trailing whitespaces
Plugin 'bronson/vim-trailing-whitespace.git'
" Indent indicators
Plugin 'ryanoasis/indentLine.git'
" Closes and deletes pairs of chars (brackets, parens, quotes, etc).
Plugin 'jiangmiao/auto-pairs'
" PHPDocBlock generator
Plugin 'tobyS/pdv.git'
" PHP composer support for Vim
Plugin 'vim-php/vim-composer'
" PHPUnit support for Vim
Plugin 'c9s/phpunit.vim'
" Better syntax file
Plugin '2072/vim-syntax-for-PHP.git'
" A newer indet file fpr PHP
Plugin '2072/PHP-Indenting-for-VIm'
" Support for PHP namespaces
Plugin 'arnaud-lb/vim-php-namespace'
" Better JSON file syntax
Plugin 'elzr/vim-json.git'
" HTML5 syntax
Plugin 'othree/html5.vim'
" Less support
Plugin 'groenewege/vim-less'
" Enhanced Javascript support
Plugin 'pangloss/vim-javascript'
" Add CSS3 syntax support to Vim's built-in syntax/css.vim.
Plugin 'hail2u/vim-css3-syntax.git'
" !!!Always load this Plugin at least!!!
" Better icons for vim-airline, nerd-tree etc.
Plugin 'ryanoasis/vim-devicons'
