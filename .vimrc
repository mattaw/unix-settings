set mouse=

" Allow buffers to be edited without being saved. Especially powerful with
" powerline.
set hidden

" vim-plug manager
call plug#begin()

Plug 'editorconfig/editorconfig-vim'
Plug 'chriskempson/base16-vim'

call plug#end()

" Fix broken old gnome-terminals that don't report 256 color support.
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Read base16 colors
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

" Create new command Py based on python3 (preferred) or python to run
" powerline from
if has('python3')
  command! -nargs=* Py python3 <args>
else
  command! -nargs=* Py python <args>
endif

"Powerline
Py from powerline.vim import setup as powerline_setup
Py powerline_setup()
Py del powerline_setup
set laststatus=2
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set mouse=
