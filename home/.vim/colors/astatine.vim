
let g:colors_name="astatine"

set background=dark

hi SpecialKey term=bold ctermfg=59 gui=italic guifg=#465457
hi link EndOfBuffer NonText
hi NonText term=bold ctermfg=59 gui=bold guifg=#465457
hi Directory term=bold cterm=bold ctermfg=118 gui=bold guifg=#A6E22E
hi ErrorMsg term=standout cterm=bold ctermfg=199 ctermbg=16 gui=bold guifg=#F92672 guibg=#232526
hi IncSearch term=reverse cterm=reverse ctermfg=193 ctermbg=16 gui=reverse guifg=#C4BE89 guibg=#000000
hi Search term=reverse ctermfg=0 ctermbg=222 guifg=#000000 guibg=#FFE792
hi link CurSearch Search
hi MoreMsg term=bold ctermfg=229 gui=bold guifg=#E6DB74
hi ModeMsg term=bold cterm=bold ctermfg=229 gui=bold guifg=#E6DB74
hi LineNr term=underline ctermfg=250 guifg=#465457 guibg=#232526
hi clear LineNrAbove
hi clear LineNrBelow
hi CursorLineNr term=bold ctermfg=208 guifg=#FD971F
hi link CursorLineSign SignColumn
hi link CursorLineFold FoldColumn
hi Question term=standout ctermfg=81 gui=bold guifg=#66D9EF
hi StatusLine term=bold,reverse cterm=bold,reverse ctermfg=238 ctermbg=253 gui=bold,reverse guifg=#455354 guibg=fg
hi StatusLineNC term=reverse cterm=reverse ctermfg=244 ctermbg=232 gui=reverse guifg=#808080 guibg=#080808
hi VertSplit term=reverse cterm=bold ctermfg=244 ctermbg=232 gui=bold guifg=#808080 guibg=#080808
hi Title term=bold ctermfg=166 gui=bold guifg=#ef5939
hi Visual ctermfg=0 ctermbg=235 guifg=Black guibg=#403D3D
hi VisualNOS term=bold,underline cterm=bold,underline ctermbg=238 gui=bold,underline guibg=#403D3D
hi WarningMsg term=standout cterm=bold ctermfg=231 ctermbg=238 gui=bold guifg=#FFFFFF guibg=#333333
hi WildMenu term=standout ctermfg=81 ctermbg=16 guifg=#66D9EF guibg=#000000
hi Folded term=standout ctermfg=67 ctermbg=16 guifg=#465457 guibg=#000000
hi FoldColumn term=standout ctermfg=67 ctermbg=16 guifg=#465457 guibg=#000000
hi DiffAdd term=bold ctermbg=24 guibg=#13354A
hi DiffChange term=bold ctermfg=181 ctermbg=239 guifg=#89807D guibg=#4C4745
hi DiffDelete term=bold ctermfg=162 ctermbg=53 gui=bold guifg=#960050 guibg=#1E0010
hi DiffText term=reverse cterm=bold ctermbg=102 gui=bold,italic guibg=#4C4745
hi SignColumn term=standout ctermfg=118 ctermbg=235 guifg=#A6E22E guibg=#232526
hi Conceal ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
hi SpellBad term=reverse ctermbg=52 gui=undercurl guisp=#FF0000
hi SpellCap term=reverse ctermbg=17 gui=undercurl guisp=#7070F0
hi SpellRare term=reverse cterm=reverse gui=undercurl guisp=#FFFFFF
hi SpellLocal term=underline ctermbg=17 gui=undercurl guisp=#70F0F0
hi Pmenu ctermfg=81 ctermbg=16 guifg=#66D9EF guibg=#000000
hi PmenuSel ctermfg=255 ctermbg=242 guibg=#808080
hi link PmenuMatch Pmenu
hi link PmenuMatchSel PmenuSel
hi link PmenuKind Pmenu
hi link PmenuKindSel PmenuSel
hi link PmenuExtra Pmenu
hi link PmenuExtraSel PmenuSel
hi PmenuSbar ctermbg=232 guibg=#080808
hi PmenuThumb ctermfg=81 ctermbg=0 guifg=#66D9EF guibg=Black
hi TabLine term=underline cterm=underline ctermfg=15 ctermbg=242 guifg=#808080 guibg=#1B1D1E
hi TabLineSel term=bold cterm=bold gui=bold
hi TabLineFill term=reverse cterm=reverse gui=reverse guifg=#1B1D1E guibg=#1B1D1E
hi CursorColumn term=reverse ctermbg=236 guibg=#293739
hi CursorLine term=underline ctermbg=234 guibg=#293739
hi ColorColumn term=reverse ctermbg=236 guibg=#232526
hi link QuickFixLine Search
hi StatusLineTerm term=bold,reverse cterm=bold ctermfg=0 ctermbg=121 gui=bold guifg=bg guibg=LightGreen
hi StatusLineTermNC term=reverse ctermfg=0 ctermbg=121 guifg=bg guibg=LightGreen
hi clear MsgArea
hi clear ComplMatchIns
hi Cursor ctermfg=16 ctermbg=253 guifg=#000000 guibg=#F8F8F0
hi lCursor guifg=bg guibg=fg
hi Normal ctermfg=252 guifg=#F8F8F2 guibg=#1B1D1E
hi MatchParen term=reverse cterm=bold ctermfg=233 ctermbg=208 gui=bold guifg=#000000 guibg=#FD971F
hi ToolbarLine term=underline ctermbg=242 guibg=Grey50
hi ToolbarButton cterm=bold ctermfg=0 ctermbg=7 gui=bold guifg=Black guibg=LightGrey
hi Comment term=bold ctermfg=14 guifg=#80a0ff
hi Constant term=underline ctermfg=13 guifg=#ffa0a0
hi Special term=bold ctermfg=224 guifg=Orange
hi Identifier term=underline cterm=bold ctermfg=14 guifg=#40ffff
hi Statement term=bold ctermfg=11 gui=bold guifg=#ffff60
hi PreProc term=underline ctermfg=81 guifg=#ff80ff
hi Type term=underline ctermfg=121 gui=bold guifg=#60ff60
hi Underlined term=underline cterm=underline ctermfg=81 gui=underline guifg=#80a0ff
hi Ignore ctermfg=0 guifg=bg
hi Added ctermfg=10 guifg=LimeGreen
hi Changed ctermfg=12 guifg=DodgerBlue
hi Removed ctermfg=9 guifg=Red
hi Error term=reverse ctermfg=15 ctermbg=9 guifg=White guibg=Red
hi Todo term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
hi String ctermfg=144 guifg=#E6DB74
hi Character ctermfg=144 guifg=#E6DB74
hi Number ctermfg=135 guifg=#AE81FF
hi Boolean ctermfg=135 guifg=#AE81FF
hi Float ctermfg=135 guifg=#AE81FF
hi Function ctermfg=118 guifg=#A6E22E
hi Conditional cterm=bold ctermfg=161 gui=bold guifg=#F92672
hi Repeat cterm=bold ctermfg=161 gui=bold guifg=#F92672
hi Label ctermfg=229 guifg=#E6DB74
hi Operator ctermfg=161 guifg=#F92672
hi Keyword cterm=bold ctermfg=161 gui=bold guifg=#F92672
hi Exception cterm=bold ctermfg=118 gui=bold guifg=#A6E22E
hi link Include PreProc
hi Define ctermfg=81 guifg=#66D9EF
hi Macro ctermfg=193 gui=italic guifg=#C4BE89
hi PreCondit cterm=bold ctermfg=118 gui=bold guifg=#A6E22E
hi StorageClass ctermfg=208 gui=italic guifg=#FD971F
hi Structure ctermfg=81 guifg=#66D9EF
hi Typedef ctermfg=81 guifg=#66D9EF
hi Tag ctermfg=161 gui=italic guifg=#F92672
hi SpecialChar cterm=bold ctermfg=161 gui=bold guifg=#F92672
hi Delimiter ctermfg=250 guifg=#8F8F8F
hi SpecialComment cterm=bold ctermfg=245 gui=bold guifg=#7E8E91
hi Debug cterm=bold ctermfg=225 gui=bold guifg=#BCA3A3
hi iCursor guifg=#000000 guibg=#F8F8F0
