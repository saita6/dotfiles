if &compatible
  set nocompatible
endif

if has('reltime')
  set incsearch
endif

set shiftwidth=4
set backspace=indent,eol,start
set history=200		" keep 200 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line
set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key
set display=truncate

inoremap <C-j> <C-n>
inoremap <C-k> <C-p>
inoremap <expr> <TAB> MyComplete()
inoremap <expr> . MyComplete()

func MyComplete()
      return ".\<C-X>\<C-O>"
endfunc

if has('mouse')
  set mouse=a
endif

if &t_Co > 2 || has("gui_running")
  set hlsearch
  colorscheme  ron" or 'murphy' 
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif 

syntax enable
