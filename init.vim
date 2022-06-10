set path+=**
""" enable syntax highlighting and filetype highlighting
syntax on
filetype on
"filetype plugin on
""" begin 'normal' settings
set exrc
set relativenumber
set nu
set guicursor=
set noerrorbells
set nohlsearch
set hidden
set nowrap
set incsearch
set termguicolors
set scrolloff=8
""" don't display the mode in the 'cmd' area
set noshowmode
set signcolumn=yes
" tab settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
""" misc
set cmdheight=2
set colorcolumn=82
set updatetime=50
set wildmode=longest,list,full
set wildmenu
set shortmess+=c

""" load plugins (use :PlugInstall)
call plug#begin(stdpath('data') . '/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()
""" end load plugins
""" leader directives
nnoremap <leader>dd :Lexplore %:p:h<CR>
nnoremap <leader>da :Lexplore<CR>
nnoremap <leader>pv :E<CR>
""" NetRW (explore) remapping
function! NetrwMapping()
    nmap <buffer> H u
    nmap <buffer> h -^
    nmap <buffer> l <CR>

    nmap <buffer> . gh
    nmap <buffer> P <C-w>z
    
    nmap <buffer> L <CR>:Lexplore<CR>
    nmap <buffer> <Leader>dd :Lexplore<CR>
endfunction

augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

""" Color settings
colorscheme dracula
highlight Normal guibg=None
highlight Visual guibg='Purple'

