let g:ctrlp_map = '<leader>p'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif

let g:ctrlp_root_markers = ['*.cabal']
