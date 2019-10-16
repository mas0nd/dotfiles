" Bootstrap Plug
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

" Install Plugins
call plug#begin()
    " Vim Start Screen
    Plug 'mhinz/vim-startify'

    " NERD Tree
    Plug 'scrooloose/nerdtree'

    " Fugitive - Git Commands
    Plug 'tpope/vim-fugitive'

    " Git Gutter
    Plug 'airblade/vim-gitgutter'

    " File Type Icons
    Plug 'ryanoasis/vim-devicons'

    " Color Previews
    Plug 'gko/vim-coloresque'

    " Airline Status Bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Auto Pairs
    Plug 'jiangmiao/auto-pairs'

    " Auto XML/HTML Tags
    Plug 'alvan/vim-closetag'

    " Dracula
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Surround
    Plug 'tpope/vim-surround'
call plug#end()

" Sync Plugins
if plug_install
    PlugInstall --sync
endif
unlet plug_install

" - NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <Leader>NT :NERDTreeToggle<CR>

" - Airline
let g:airline_powerline_fonts = 1
let g:airline_time='deus'
let g:airline#extensions#tabline#enabled = 1

" - Dracula
let g:dracula_italic = 0
