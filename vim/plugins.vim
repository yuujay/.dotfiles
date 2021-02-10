if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim' ",  {'branch': 'release'}

" --- SOME NICE TO HAVE PLUGINS ---
"
" Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
" Plug 'https://github.com/junegunn/goyo.vim'
" Plug 'https://github.com/sjl/gundo.vim.git'
" Plug 'https://github.com/thoughtbot/vim-rspec'
" https://github.com/mg979/vim-visual-multi
"
" https://github.com/MattesGroeger/vim-bookmarks
" https://github.com/dyng/ctrlsf.vim
" https://github.com/mhinz/vim-startify
" https://github.com/terryma/vim-multiple-cursors

Plug 'https://github.com/ngmy/vim-rubocop'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/christoomey/vim-sort-motion.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'https://github.com/christoomey/vim-tmux-runner.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'  "invoke by <leader><leader>s
Plug 'https://github.com/elzr/vim-json.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/junegunn/fzf.vim'
Plug 'https://github.com/junegunn/limelight.vim'
Plug 'https://github.com/ngmy/vim-rubocop.git'
Plug 'https://github.com/powerline/fonts.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-endwise.git'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-rails'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'mbbill/undotree'

Plug 'https://github.com/ryanoasis/vim-devicons'  "This needs to be at the end since we devicons need to loaded after all plugins
call plug#end()


