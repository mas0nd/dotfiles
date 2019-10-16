"  Settings
" - Enable Line Numbers
set nu

" - Allow for hidden buffers
set hidden

" - Update quicker
set updatetime=100

" - Fix Status Line Fill
set fillchars=stl:\ ,stlnc:_

" - Use UTF-8
set encoding=utf-8

" - Default Tab Settings
set sw=4
set sts=4
set ts=4

" - Filetype Settings
autocmd Filetype c setlocal sw=2 sts=2 ts=2 expandtab
autocmd Filetype python setlocal sw=4 sts=4 ts=4 expandtab
autocmd Filetype java setlocal sw=4 sts=4 expandtab
