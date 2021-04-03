" Install Vim Plug
if !has('win32')
  let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
  if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endif

set nocompatible

lua require 'init'

if has('win32')
  set shell=cmd

  " Windows bindings
  source $VIMRUNTIME/mswin.vim
  inoremap <silent> <S-Insert> <C-R>+

  source $HOME/AppData/Local/nvim/plugins.vim
  " source $HOME/AppData/Local/nvim/lsp-bindings.vim
else
  source $HOME/.config/nvim/plugins.vim
  " source $HOME/.config/nvim/lsp-bindings.vim
endif

