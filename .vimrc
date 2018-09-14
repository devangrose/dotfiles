call plug#begin()

" ------------ Plugins ----------- " 
Plug 'flazz/vim-colorschemes'
Plug 'dylanaraps/wal.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'alvan/vim-closetag'
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'briancollins/vim-jst'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }



call plug#end()

syntax enable
colorscheme wal

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

set ts=4 sts=4 sw=4 expandtab

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
"autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set number

:map <F1> :tabp <enter>
:map <F2> :tabn <enter>
:map <F3> :call fzf#run({'sink': 'tabnew'})

autocmd BufLeave,FocusLost * silent! wall

let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
