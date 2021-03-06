" Install vim-plug

" Allow buffers to be edited without being saved. Especially powerful with
" powerline.
set hidden

" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system

Plug 'editorconfig/editorconfig-vim'
Plug 'chriskempson/base16-vim'

call plug#end()

" Fix broken old gnome-terminals that don't report 256 color support.
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif

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

autocmd Filetype tex setlocal spell spelllang=en_us

