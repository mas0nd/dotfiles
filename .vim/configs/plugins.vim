" Plugin Configs

" Plug Plugin Manager
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin Installs
call plug#begin()
  " Vim Start Screen
  Plug 'mhinz/vim-startify'

  " NERD Tree - File Tree for inside VIM + GIT Plugin
  Plug 'scrooloose/nerdtree'

  " Vim Wiki
  Plug 'vimwiki/vimwiki'

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

  " YouCompleteMe
  Plug 'Valloric/YouCompleteMe'

  " Auto Pairs
  Plug 'jiangmiao/auto-pairs'

  " Auto XML/HTML
  Plug 'alvan/vim-closetag'


  " Dracula
  Plug 'dracula/vim', { 'as': 'dracula'  }

  " Surround
  Plug 'tpope/vim-surround'

  " Vimtex
  Plug 'lervag/vimtex'
call plug#end()

" - vimwiki
let g:vimwiki_list = [{'path': '~/global/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

" - NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <Leader>NT :NERDTreeToggle<CR>

" - Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1

" - Dracula
let g:dracula_italic = 0

" - YCM
let g:ycm_autoclose_preview_window_after_insertion = 1
