if exists('g:syntaxinfo_loaded')
  finish
endif
let g:syntaxinfo_loaded = 1

command! SyntaxInfo call syntaxinfo#show()
