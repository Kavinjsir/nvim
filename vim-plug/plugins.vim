" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    " Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Theme Sierra
    Plug 'alessandroyorba/sierra'

    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Nerd Font
    Plug 'ryanoasis/vim-devicons'

    " Theme ayu
    Plug 'ayu-theme/ayu-vim'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Colored parentheses
    Plug 'junegunn/rainbow_parentheses.vim'

    " Git diff
    Plug 'airblade/vim-gitgutter'

    " Relief finger motion with Sneak
    Plug 'justinmk/vim-sneak'

    " Record my coding time
    Plug 'wakatime/vim-wakatime'

    " Theme fixed solarized
    Plug 'overcache/NeoSolarized'

    " Theme onedark
    Plug 'joshdick/onedark.vim'

call plug#end()
