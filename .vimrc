set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

call plug#begin('~/.vim/plugged')

" Language Supports
Plug 'dag/vim-fish'
Plug 'vim-scripts/oberon.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Appearence
Plug 'ayu-theme/ayu-vim'

" Misc
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

call plug#end()

try
  source ~/.vim_runtime/my_configs.vim
catch
endtry

