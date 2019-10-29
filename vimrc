set backspace=indent,eol,start   " allow backspacing over everything in insert mode
set ruler                        " show the cursor position all the time
set showcmd                      " display incomplete commands
set incsearch                    " do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Bash-like tab completion
set wildmode=longest,list
set wildmenu

call plug#begin()
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'stephpy/vim-yaml'
Plug 'hashivim/vim-terraform'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'brafales/vim-desert256'
Plug 'vim-scripts/vim-auto-save'
call plug#end()

"auto save
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:updatetime = 500

"python mode
let g:pymode_options = 1
let g:pymode_warnings = 1
let g:pymode_python = 'python3'
let g:pymode_options_max_line_length = 120
let g:pymode_lint_options_pep8 = {'max_line_length': g:pymode_options_max_line_length}
let g:pymode_options_colorcolumn = 1
let g:pymode_trim_whitespaces = 1
"let g:pymode_rope = 1
"set completeopt=menuone,noinsert
"let g:pymode_rope_complete_on_dot = 1
"let g:pymode_rope_completion = 1
"let g:pymode_rope_completion_bind = '<C-Space>'

