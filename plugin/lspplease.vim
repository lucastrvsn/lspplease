if exists('g:loaded_lspplease')
  finish
endif

command! -nargs=? LspPleaseInstall lua require'lspplease'(<f-args>)
" command! -nargs=? LspPleaseUpdate lua require'lspupdate'(<f-args>)

let g:loaded_lspplease = 1
