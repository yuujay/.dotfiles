" NodeTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

" Start fzf file finder

nnoremap <C-F> :Ag<space>
nnoremap <C-p> :Files<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <leader>c :BCommits<CR>
nnoremap <leader>f :Ag<space>
nnoremap <leader>p :Files<CR>
nnoremap <leader>t :Colors<CR>

" Undotree
nnoremap <leader>g :UndotreeToggle<CR>

" Git guttter

nnoremap <leader>gh :GitGutterPreviewHunk<CR>
nnoremap <leader>gs :GitGutterStageHunk<CR>
nnoremap <leader>gj :GitGutterNextHunk<CR>
nnoremap <leader>gk :GitGutterPrevHunk<CR>
nnoremap <leader>gu :GitGutterUndoHunk<CR>

" Vim-Tmux-Runner

nnoremap <leader>vc :VtrSendCtrlC<CR>
nnoremap <leader>vcmd :VtrSendCommandToRunner<CR>
nnoremap <leader>vk :VtrClearRunner<CR>
nnoremap <leader>vl :VtrSendLinesToRunner!<CR>
nnoremap <leader>vz :VtrFocusRunner<CR>

" Changing this because `VtrOpenRunner` doesn't work properly with neovim
nnoremap <leader>vr :VtrAttachToPane<CR>

" Rubocop
nmap <Leader><Leader>r :RuboCop<CR>

" Vim-Rspec
" nnoremap <leader>r. :call RunCurrentSpecFile()<CR>
" nnoremap <leader>rn :call RunNearestSpec()<CR>
" nnoremap <leader>rl :call RunLastSpec()<CR>
" nnoremap <leader>ra :call RunAllSpecs()<CR>

