" Created by Ihsan Emre Ustun. 29.01.2019
" Last edited by Ihsan Emre Ustun. 29.01.2019


"------------------------------------------------------------

" GENERAL PREFERENCES

set nocompatible    " Don't include vi compatibility.
filetype off

"------------------------------------------------------------
" TODO: Load Plugins here (vim-plug)

call plug#begin('~/.vim/plugged')
" Declare the list of plugins

Plug 'junegunn/seoul256.vim' 
Plug 'scrooloose/nerdtree'
Plug '~/.vim/plugged/YouCompleteMe/'
"Plug 'davidhalter/jedi-vim'

" Change YCM config file directory and set a global one.
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" The *g:ycm_autoclose_preview_window_after_completion* option:
" When this option is set to '1', YCM will auto-close the 'preview' window after
" the user accepts the offered completion string. If there is no 'preview' window
" triggered because there is no 'preview' string in 'completeopt', this option is
" irrelevant. See the |g:ycm_add_preview_to_completeopt| option for more details.

" Default: '0'
let g:ycm_autoclose_preview_window_after_completion = 1
"-------------------------------------------------------------------------------
" The *g:ycm_autoclose_preview_window_after_insertion* option:
" When this option is set to '1', YCM will auto-close the 'preview' window after
" the user leaves insert mode. This option is irrelevant if
" |g:ycm_autoclose_preview_window_after_completion| is set or if no 'preview'
" window is triggered. See the |g:ycm_add_preview_to_completeopt| option for more
" details.

" Default: '0'
let g:ycm_autoclose_preview_window_after_insertion = 1

call plug#end()

filetype plugin indent on " Filetype auto-detection

"------------------------------------------------------------
" DISPLAY PREFERENCES

set encoding=utf-8  " Encoding used for displaying file.

set ruler           " Show the cursor position all the time.

set showmatch       " Highlight matching braces.

set showmode        " Show insert/replace/visual mode.

set splitbelow      " When on, splitting a window will put the new window below
                    " the current one

set splitright      " When on, splitting a window will put the new window right
                    " the current one

noremap <F12> :set list!<CR>
inoremap <F12> <Esc>:set list!<CR>a
                    " Press F12 to toggle showing the 
                    " non-printable charactes.

"-----------------------------
" Syntax Highlighting 

" TODO: Decide colorscheme 
" colorscheme solarized " Set color scheme, must be installed first.

set background=dark " Dark background for console.

syntax enable       " Enable syntax highlighting.


"------------------------------------------------------------
" SEARCH PREFERENCES

set incsearch       " Show search matches as you type.

set ignorecase      " Case insensitive search.

set smartcase       " If a capital letter is included .
                    " in search, make it case-sensitive.

set hlsearch        " Highlight searches.

nnoremap <C-L> :nohl<CR><C-L>
                    " Clear highlights on CTRl-l, 
                    " until the next search. 

" nnoremap <esc><esc> :noh<return>
                    " Clear highlights on DOUBLE hitting ESC
                    " until the next search.


"------------------------------------------------------------
" BOTTOM LINE PREFERENCES

set ruler           " Display the cursor position on 
                    " the last line of the screen or 
                    " in the status line of a window.
 
set laststatus=2    " Always display the status line, 
                    " even if only one window is displayed.
 
set confirm         " Instead of failing a command because 
                    " of unsaved changes, instead raise a
                    " dialogue asking if you wish to 
                    " save changed files.
 
set cmdheight=2     " Set the command window height 
                    " to 2 lines. 
 
set wildmenu        " Auto tab completion for file names.
 
set number          " Display line numbers on the left.
 
set pastetoggle=<F11>   " Use <F11> to toggle between 
                        "'paste' and 'nopaste'.
 
set showcmd         " Show written command in the 
                    " last line of the screen.


"------------------------------------------------------------
" EDIT PREFERENCES

set expandtab       " Use Spaced instead of TAB.

set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4.

set softtabstop=4   " Setsnumber of columns for a TAB.

set backspace=indent,eol,start  " Allow backspacing 
                    " over autoindent, line breaks 
                    " and start of insert action.
 
set autoindent      " When opening a new line and 
                    " no filetype-specific indenting 
                    " is enabled, keep the same indent 
                    " as the line you're currently on.
 
set nostartofline   " Stop certain movements from always 
                    " going to the first character of 
                    " a line.

"set textwidth=80    " Wrap lines automatically at 80th column

map <F7> ==         
                    " Map F7 to AUTO-INDENT current line.



"------------------------------------------------------------
" MAPPINGS

noremap <C-Up> 5<Up>
noremap <C-Down> 5<Down>
                    " Map Ctrl-Up & Ctrl-Dwon for 
                    " fast movement
noremap Y y$
                    " Map Y to act like D and C, i.e.
                    " to yank until EOL, rather than 
                    " act as yy, which is the default
nnoremap B ^
                    " Map B to move to the beginning
                    " of the current line
nnoremap E $
                    " Map E to move to the end  
                    " of the current line

nnoremap gV `[v`]
                    " highlight last inserted text

noremap n nzz
noremap N Nzz
                    " center view on the search result

noremap <silent> <C-k> :s#^#\##<cr>:noh<cr>
                    " Map Ctrl-k for commenting the line
                    " in Visual Mode

noremap <silent> <C-u> :s#^\###<cr>:noh<cr>
                    " Map Ctrl-u for commenting the line
                    " in Visual Mode
