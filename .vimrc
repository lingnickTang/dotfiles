let mapleader = "\<Space>"

nnoremap <leader> <C-W>

set nu
set tabstop=4
set mouse=a

" colorscheme morning

" highlight config
hi ErrorMsg term=standout cterm=underline ctermfg=white ctermbg=Red gui=bold 

hi Pmenu ctermfg=232 ctermbg=250 guibg=Grey
hi PmenuSel ctermbg=254
hi visual ctermbg=254 
hi search ctermbg=251
hi VertSplit term=bold cterm=None ctermfg=4 guifg=blue 
hi StatusLine cterm=bold
hi StatusLineNC cterm=bold

" vim status settings
set laststatus=2
set noshowmode
let g:lightline = { 'colorscheme': 'one' }

" cscope settings
set tags=tags
" set autochdir

" NerdTree settings
map <F3> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '|>'
let g:NERDTreeDirArrowCollapsible = '/='
let g:NERDChristmasTree = 1
let g:NERDTreeMouseMode = 2

" Use deoplete
let g:deoplete#enable_at_startup = 1

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" plugins setting 
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'

Plug 'diabloneo/cscope_maps.vim'

Plug 'preservim/nerdtree'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
call plug#end()

