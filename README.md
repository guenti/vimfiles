# My Vim configuration

## Introduction
Mainly I use Vim for PHP/SQL coding.
That's my personal Vim setup with many PHP related Plugins.

## Installation
```bash
$ mkdir $HOME/.vim
```
[Download plug.vim](https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim)
and put it in the "autoload" directory.

or

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```bash
$ vim +PlugInstall +qall
```
Install one of the [Fonts](https://github.com/ryanoasis/nerd-fonts.git) as recommended for NerdTree and Vim-Airline.

Happy Vim-ing. :)

## Plugins included
* Plug 'altercation/vim-colors-solarized.git'
* Plug 'jdkanani/vim-material-theme'
* Plug 'blueshirts/darcula'
* Plug 'vim-airline/vim-airline'
* Plug 'vim-airline/vim-airline-themes'
* Plug 'scrooloose/nerdtree.git'
* Plug 'Xuyuanp/nerdtree-git-plugin'
* Plug 'jistr/vim-nerdtree-tabs'
* Plug 'tpope/vim-fugitive'
* Plug 'tpope/vim-git'
* Plug 'tpope/vim-surround'
* Plug 'tpope/vim-repeat'
* Plug 'ervandew/supertab'
* Plug 'scrooloose/syntastic'
* Plug 'SirVer/ultisnips'
* Plug 'tobyS/vmustache.git'
* Plug 'majutsushi/tagbar.git'
* Plug 'ludovicchabant/vim-gutentags'
* Plug 'sjl/gundo.vim'
* Plug 'bronson/vim-trailing-whitespace.git'
* Plug 'ryanoasis/indentLine.git'
* Plug 'jiangmiao/auto-pairs'
* Plug 'tobyS/pdv.git'
* Plug '2072/vim-syntax-for-PHP.git'
* Plug '2072/PHP-Indenting-for-VIm'
* Plug 'arnaud-lb/vim-php-namespace'
* Plug 'shawncplus/phpcomplete.vim'
* Plug 'editorconfig/editorconfig-vim'
* Plug 'elzr/vim-json.git'
* Plug 'othree/html5.vim'
* Plug 'groenewege/vim-less'
* Plug 'pangloss/vim-javascript'
* Plug 'hail2u/vim-css3-syntax.git'
