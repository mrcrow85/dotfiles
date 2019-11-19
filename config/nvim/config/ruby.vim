" Rubycomplete {{{
autocmd FileType ruby set omnifunc=rubycomplete#Complete
let g:rubycomplete_rails=1
let g:rubycomplete_classes_in_global=1
let g:rubycomplete_buffer_loading=1
let g:rubycomplete_include_object=1
let g:rubycomplete_include_objectspace=1
" }}}

" Filetypes {{{
  " Ruby {{{
  augroup FTRuby
    au!
    autocmd FileType eruby,yaml,ruby      setlocal ai et sta sw=2 sts=2
    autocmd BufNewFile,BufRead *.html.erb set filetype=eruby.html  " load html snippets along with erb
    autocmd FileType ruby,eruby           let g:rubycomplete_rails = 1
    autocmd FileType ruby,eruby           let g:rubycomplete_classes_in_global=1
    autocmd FileType ruby,eruby           let g:rubycomplete_buffer_loading= 1
    " Rspec
    " {{{
    autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context expect let double mock aggregate_failures
    highlight def link rubyRspec Identifier
    " }}}

    " Minitest
    " {{{
    autocmd BufRead *_test.rb syn keyword rubyMinitest describe it before after subject let mock aggregate_failures
    highlight def link rubyMinitest Identifier
    " }}}
  augroup END
  " }}}

