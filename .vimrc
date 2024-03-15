""""""""""""""""""""""
" Syntax Highlighting
""""""""""""""""""""""
syntax on

"""""""""""""""
" Line Numbers
"""""""""""""""
set number

"""""""""""""""
" Tab Settings
"""""""""""""""
set tabstop=4     " Set tab width to 4 spaces
set expandtab     " Use spaces instead of tab characters

"""""""""""""""""""""""
" Indentation Settings
"""""""""""""""""""""""
set autoindent    " Automatically indent new lines based on previous lines
set smartindent   " Smart indentation based on syntax

""""""""""""""""""
" Search Settings
""""""""""""""""""
set ignorecase    " Ignore case when searching
set smartcase     " Case-sensitive search if any uppercase characters are used
set hlsearch      " Highlight search results

""""""""""""""""""
" Visual Settings
""""""""""""""""""
set background=dark    " Set background color (dark or light)
colorscheme desert     " Set color scheme (replace 'desert' with your desired scheme)

""""""""""""""""""""""
" Custom Key Mappings
""""""""""""""""""""""
nnoremap <F2> :w<CR>    " Map F2 to save the file
inoremap <F2> <Esc>:w<CR>  " In insert mode, also save when pressing F2

