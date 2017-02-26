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
Install one of the [Fonts](https://github.com/ryanoasis/nerd-fonts.git) as recommended for Vim-Airline.

Happy Vim-ing. :)

## Plugins included
* Plug 'altercation/vim-colors-solarized'
* Plug 'NLKNguyen/papercolor-theme'
* Plug 'vim-airline/vim-airline'
* Plug 'vim-airline/vim-airline-themes'
* Plug 'tobyS/vmustache'
* Plug 'tpope/vim-fugitive'
* Plug 'tpope/vim-git'
* Plug 'airblade/vim-gitgutter'
* Plug 'gregsexton/gitv'
* Plug 'sjl/splice.vim'
* Plug 'tpope/vim-surround'
* Plug 'tpope/vim-repeat'
* Plug 'ervandew/supertab'
* Plug 'scrooloose/syntastic'
* Plug 'SirVer/ultisnips'
* Plug 'majutsushi/tagbar'
* Plug 'ludovicchabant/vim-gutentags'
* Plug 'sjl/gundo.vim'
* Plug 'bronson/vim-trailing-whitespace'
* Plug 'ryanoasis/indentLine'
* Plug 'jiangmiao/auto-pairs'
* Plug '2072/vim-syntax-for-PHP'
* Plug '2072/PHP-Indenting-for-VIm'
* Plug 'shawncplus/phpcomplete.vim'
* Plug 'tobyS/pdv'
* Plug 'swekaj/php-foldexpr.vim'
* Plug 'guenti/vim-php-cs-fixer'
* Plug 'vim-ruby/vim-ruby'
* Plug 'tpope/vim-rails'
* Plug 'editorconfig/editorconfig-vim'
* Plug 'elzr/vim-json'
* Plug 'othree/html5.vim'
* Plug 'groenewege/vim-less'
* Plug 'pangloss/vim-javascript'
* Plug 'hail2u/vim-css3-syntax'
* Plug 'ryanoasis/vim-devicons'

