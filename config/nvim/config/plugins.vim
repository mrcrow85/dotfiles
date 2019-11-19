" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Python development
let python_highlight_all=1

" Theme
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
colorscheme molokai

" HTML Snippets config
let g:user_emmet_leader_key='<Tab>'

" React lint
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
autocmd BufWritePost *.js AsyncRun -post=checktime npx eslint --fix %

" completion
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
augroup end
