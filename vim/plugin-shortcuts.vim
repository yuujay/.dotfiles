" NodeTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Start fzf file finder

nnoremap <C-F> :Ag<space>
nnoremap <C-p> :Files<CR>
nnoremap <leader>/ :BLines<CR>
nnoremap <leader>c :BCommits<CR>
nnoremap <leader>f :Ag<space>
nnoremap <leader>p :Files<CR>
nnoremap <leader>t :Colors<CR>

" Gundo
nnoremap <leader>g :GundoToggle<CR>

" Git guttter

nnoremap <leader>gh :GitGutterPreviewHunk<CR>
nnoremap <leader>gs :GitGutterStageHunk<CR>
nnoremap <leader>gj :GitGutterNextHunk<CR>
nnoremap <leader>gk :GitGutterPrevHunk<CR>
nnoremap <leader>u :GitGutterUndoHunk<CR>

" Vim-Tmux-Runner

nnoremap <leader>vc :VtrSendCtrlC<CR>
nnoremap <leader>vcmd :VtrSendCommandToRunner<CR>
nnoremap <leader>vk :VtrClearRunner<CR>
nnoremap <leader>vl :VtrSendLinesToRunner!<CR>
nnoremap <leader>vr :VtrOpenRunner<CR>
nnoremap <leader>vz :VtrFocusRunner<CR>

" Vim-Rspec
" nnoremap <leader>r. :call RunCurrentSpecFile()<CR>
" nnoremap <leader>rn :call RunNearestSpec()<CR>
" nnoremap <leader>rl :call RunLastSpec()<CR>
" nnoremap <leader>ra :call RunAllSpecs()<CR>

