" Make external commands work through a pipe instead of a pseudo-tty
set noguipty

" set the X11 font to use
if has("gui_macvim")
    set gfn=Monaco\ for\ Powerline\ Nerd\ Font\ Complete:h14
else
    set gfn=Monaco\ for\ Powerline\ 12
endif

" Remove toolbar
set guioptions-=T

" Remove scrollbar
set guioptions+=LlRrb
set guioptions-=LlRrb

set anti
