" Stuff for Vundle
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'ciaranm/inkpot'
Plugin 'jonathanfilip/vim-lucius'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'wesgibbs/vim-irblack'

Plugin 'kien/ctrlp.vim'

Plugin 'elzr/vim-json'

Plugin 'kchmck/vim-coffee-script'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'vim-scripts/guicolorscheme.vim'
Plugin 'godlygeek/csapprox'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set number

" Color scheme
set t_Co=256
"if (&t_Co == 256 || &t_Co == 88) && !has('gui_running') &&
"  \ filereadable(expand("$HOME/.vim/bundle/guicolorscheme.vim/plugin/guicolorscheme.vim"))
"  " Use the guicolorscheme plugin to makes 256-color or 88-color
"  " terminal use GUI colors rather than cterm colors.
"  runtime! plugin/guicolorscheme.vim
"  GuiColorScheme ir_black
"else
"  " For 8-color 16-color terminals or for gvim, just use the
"  " regular :colorscheme command.
"  try
"    colorscheme ir_black
"  catch
"    colorscheme pablo
"  endtry
"endif
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
try
  colorscheme ir_black
catch
  colorscheme pablo
endtry

" Use width-2 soft tabs
set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

set pastetoggle=<F2>

" Show “invisible” characters
"set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
"set list lcs=trail:·,tab:»·


" indent guide colors
"let g:indent_guides_auto_colors = 0
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgray

au BufRead,BufNewFile *.hamlc set ft=haml

nnoremap v <c-v>
