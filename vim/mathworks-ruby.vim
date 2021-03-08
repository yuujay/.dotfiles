nnoremap <leader>ras :call ExecuteAllSpecs()<CR>
nnoremap <leader>rg :call OpenFile('./Gemfile')<CR>
nnoremap <leader>rp :call OpenFile('./pom.xml')<CR>
nnoremap <leader>rrh :call OpenFile('./spec/rails_helper.rb')<CR>
nnoremap <leader>rs :call ExecuteCurrentSpec()<CR>
nnoremap <leader>rsf :call ExecuteCurrentSpecFile()<CR>
nnoremap <leader>rsh :call OpenFile('./spec/spec_helper.rb')<CR>

function! OpenFile(fileName)
  if filereadable(a:fileName)
    execute 'e '.fnameescape(a:fileName)
  else
    echom  a:fileName.' file Not Found'
  endif
endfunction

function! ExecuteAllSpecs()
  VtrSendCommandToRunner bundle exec rspec spec/
endfunction

function! ExecuteCurrentSpecFile()
  call VtrSendCommand( 'bundle exec rspec '. @%)
endfunction

function! ExecuteCurrentSpec()
  call VtrSendCommand( 'bundle exec rspec '. @% .':'.line('.'))
endfunction
