" Disable netrw (we use dirvish around these parts)
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1

if has('nvim') | packadd termdebug | endif

" Use pathogen to manage manually installed plugins
execute pathogen#infect('plugins-dev/{}', 'plugins-local/{}')

" Generate helptags for manually installed plugins
Helptags

" Use vim-plug for all other plugins
let g:plug_window = 'botright new'
call plug#begin(g:user_config_dir . "/plugins")

" Better matchit
Plug 'andymass/vim-matchup'

" Seamless vim/tmux naviagation
Plug 'christoomey/vim-tmux-navigator'
if has('nvim')
    nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
endif

" Better syntax highlighting, autoindentation, linting, folding, and more for haskell
Plug 'dag/vim2hs'

" Use tab to autocomplete (and much more)
if !has('nvim')
    Plug 'ervandew/supertab'
endif

" Better than netrw for file browsing
Plug 'justinmk/vim-dirvish'

" Improved 'f' motion and much more precise 's' motion
Plug 'justinmk/vim-sneak'

" Ctags management
Plug 'ludovicchabant/vim-gutentags'

" Code structure viewer
Plug 'majutsushi/tagbar'

" Easier undo tree navigation
Plug 'mbbill/undotree'

" VCS change indicators
Plug 'mhinz/vim-signify'

" Language server and autocompletion
if has('nvim-0.5.0')
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
endif

" Nice semantic python syntax highlighting
if has('nvim')
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    let g:semshi#error_sign = v:false
endif

" i3 config syntax higlighting
Plug 'PotatoesMaster/i3-vim-syntax'

" Multi-purpose fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.local/share/fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Snippets
if (has('python') || has('python3')) || has('nvim')
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
endif

" Better lua indentation and syntax highlighting
Plug 'tbastos/vim-lua'

" Causes the default register to be synchronized with the tmux paste buffer when
" text is yanked. (requires vim-tmux-focus-events)
Plug 'roxma/vim-tmux-clipboard'

" Some conveniences for editing tmux.conf
Plug 'tmux-plugins/vim-tmux'

" Easily comment stuff out
Plug 'tpope/vim-commentary'

" Git integration
Plug 'tpope/vim-fugitive'

" Automatic :mksession (only when done manually first)
Plug 'tpope/vim-obsession'

" Support for '.' repetition in plugins
Plug 'tpope/vim-repeat'

" Mappings for easily surrounding text with quotes, braces parentheses, etc.
Plug 'tpope/vim-surround'

" Provides many convenient bracket mappings
Plug 'tpope/vim-unimpaired'

" Provides text objects and folding for indented languages
Plug 'tweekmonster/braceless.vim'

" Nice status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Provides pandoc markdown highlighting
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Provides nim support for vim
Plug 'zah/nim.vim'

" Linting
if v:version >= 800 || has('nvim')
    Plug 'w0rp/ale'
endif

call plug#end()
