" Name:         Apprentice
" Description:  Essentially a streamlining and conversion to xterm colors of 'sorcerer' by Jeet Sukumaran <jeetsukumaran@gmailcom>
" Author:       Romain Lafourcade <romainlafourcade@gmail.com>
" Maintainer:   Romain Lafourcade <romainlafourcade@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: Thu 31 Jan 21:13:15 2019

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < (get(g:, 'apprentice_use16', &t_Co < 256) ? 16 : 256))
  echoerr '[Apprentice] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'apprentice'

" 256-color variant
if !get(g:, 'apprentice_use16', &t_Co < 256)
  hi Normal ctermfg=250 ctermbg=235 guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
  hi Terminal ctermfg=250 ctermbg=235 guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=242 ctermbg=234 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=242 ctermbg=234 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=242 ctermbg=234 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi MatchParen ctermfg=229 ctermbg=234 guifg=#ffffaf guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi SignColumn ctermfg=242 ctermbg=234 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=240 ctermbg=NONE guifg=#585858 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=250 ctermbg=NONE guifg=#bcbcbc guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=208 ctermbg=NONE guifg=#ff8700 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=131 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Identifier ctermfg=67 ctermbg=NONE guifg=#5f87af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Special ctermfg=65 ctermbg=NONE guifg=#5f875f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=110 ctermbg=NONE guifg=#8fafd7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=108 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi Type ctermfg=103 ctermbg=NONE guifg=#8787af guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi NonText ctermfg=240 ctermbg=NONE guifg=#585858 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Pmenu ctermfg=250 ctermbg=238 guifg=#bcbcbc guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=240 guifg=NONE guibg=#585858 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=235 ctermbg=66 guifg=#262626 guibg=#5f8787 guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=66 ctermbg=66 guifg=#5f8787 guibg=#5f8787 guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=235 ctermbg=131 guifg=#262626 guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=235 ctermbg=108 guifg=#262626 guibg=#87af87 guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=66 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=108 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=131 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=101 ctermbg=238 guifg=#87875f guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=238 ctermbg=238 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=235 ctermbg=101 guifg=#262626 guibg=#87875f guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=NONE ctermbg=242 guifg=NONE guibg=#6c6c6c guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=73 ctermbg=236 guifg=#5fafaf guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
  hi helpLeadBlank ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi helpNormal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=235 ctermbg=101 guifg=#262626 guibg=#87875f guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=101 ctermbg=238 guifg=#87875f guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=235 ctermbg=101 guifg=#262626 guibg=#87875f guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=101 ctermbg=238 guifg=#87875f guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=110 ctermbg=235 guifg=#8fafd7 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi VertSplit ctermfg=238 ctermbg=238 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=235 ctermbg=110 guifg=#262626 guibg=#8fafd7 guisp=NONE cterm=NONE gui=NONE
  hi Function ctermfg=229 ctermbg=NONE guifg=#ffffaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=240 ctermbg=NONE guifg=#585858 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=231 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=108 ctermbg=235 guifg=#87af87 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffChange ctermfg=103 ctermbg=235 guifg=#8787af guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffDelete ctermfg=131 ctermbg=235 guifg=#af5f5f guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi DiffText ctermfg=208 ctermbg=235 guifg=#ff8700 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
  hi IncSearch ctermfg=235 ctermbg=131 guifg=#262626 guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
  hi Search ctermfg=235 ctermbg=229 guifg=#262626 guibg=#ffffaf guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=73 ctermbg=NONE guifg=#5fafaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=131 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=#af5f5f cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellCap ctermfg=73 ctermbg=NONE guifg=#5fafaf guibg=NONE guisp=#5fafaf cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellLocal ctermfg=65 ctermbg=NONE guifg=#5f875f guibg=NONE guisp=#5f875f cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellRare ctermfg=208 ctermbg=NONE guifg=#ff8700 guibg=NONE guisp=#ff8700 cterm=NONE,undercurl gui=NONE,undercurl
  hi ColorColumn ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
  hi debugPC         ctermbg=67 guibg=#5f87af
  hi debugBreakpoint ctermbg=131  guibg=#af5f5f
  let links = [
        \ ['Boolean', 'Constant'],
        \ ['Character', 'Constant'],
        \ ['Conditional', 'Statement'],
        \ ['Debug', 'Special'],
        \ ['Define', 'PreProc'],
        \ ['Delimiter', 'Special'],
        \ ['Exception', 'Statement'],
        \ ['Float', 'Number'],
        \ ['HelpCommand', 'Statement'],
        \ ['HelpExample', 'Statement'],
        \ ['Include', 'PreProc'],
        \ ['Keyword', 'Statement'],
        \ ['Label', 'Statement'],
        \ ['Macro', 'PreProc'],
        \ ['Number', 'Constant'],
        \ ['Operator', 'Statement'],
        \ ['PreCondit', 'PreProc'],
        \ ['Repeat', 'Statement'],
        \ ['SpecialChar', 'Special'],
        \ ['SpecialComment', 'Special'],
        \ ['StorageClass', 'Type'],
        \ ['Structure', 'Type'],
        \ ['Tag', 'Special'],
        \ ['Terminal', 'Normal'],
        \ ['Typedef', 'Type'],
        \ ['asciidocQuotedEmphasized', 'PreProc'],
        \ ['diffAdded', 'String'],
        \ ['diffBDiffer', 'WarningMsg'],
        \ ['diffCommon', 'WarningMsg'],
        \ ['diffDiffer', 'WarningMsg'],
        \ ['diffIdentical', 'WarningMsg'],
        \ ['diffIsA', 'WarningMsg'],
        \ ['diffNoEOL', 'WarningMsg'],
        \ ['diffOnly', 'WarningMsg'],
        \ ['diffRemoved', 'WarningMsg'],
        \ ['htmlBold', 'Normal'],
        \ ['htmlEndTag', 'htmlTagName'],
        \ ['htmlItalic', 'Normal'],
        \ ['htmlLink', 'Function'],
        \ ['htmlSpecialTagName', 'htmlTagName'],
        \ ['htmlTag', 'htmlTagName'],
        \ ['markdownItalic', 'PreProc'],
        \ ['xmlEndTag', 'Statement'],
        \ ['xmlTag', 'Statement'],
        \ ['xmlTagName', 'Statement'],
        \ ]

  augroup Apprentice
    autocmd!
    autocmd ColorScheme * if expand("<amatch>") == "apprentice" | for link in links | execute 'hi link' link[0] link[1] | endfor | else | for link in links | execute 'hi link' link[0] 'NONE' | endfor | endif
  augroup END
  finish
endif

" 16-color variant
hi Normal ctermfg=Black ctermbg=Black guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Terminal ctermfg=Black ctermbg=Black guifg=#bcbcbc guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=7 ctermbg=0 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=7 ctermbg=0 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=7 ctermbg=0 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=11 ctermbg=0 guifg=#ffffaf guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi SignColumn ctermfg=7 ctermbg=0 guifg=#6c6c6c guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=8 ctermbg=NONE guifg=#585858 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=Black ctermbg=NONE guifg=#bcbcbc guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=9 ctermbg=NONE guifg=#ff8700 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=1 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Identifier ctermfg=4 ctermbg=NONE guifg=#5f87af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=2 ctermbg=NONE guifg=#5f875f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=12 ctermbg=NONE guifg=#8fafd7 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=10 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi Type ctermfg=13 ctermbg=NONE guifg=#8787af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi NonText ctermfg=8 ctermbg=NONE guifg=#585858 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=Black ctermbg=8 guifg=#bcbcbc guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=NONE ctermbg=8 guifg=NONE guibg=#585858 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=Black ctermbg=6 guifg=#262626 guibg=#5f8787 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=6 ctermbg=6 guifg=#5f8787 guibg=#5f8787 guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=Black ctermbg=1 guifg=#262626 guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=Black ctermbg=10 guifg=#262626 guibg=#87af87 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=6 ctermbg=NONE guifg=#5f8787 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=10 ctermbg=NONE guifg=#87af87 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=1 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=3 ctermbg=8 guifg=#87875f guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=8 ctermbg=8 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=Black ctermbg=3 guifg=#262626 guibg=#87875f guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=NONE ctermbg=7 guifg=NONE guibg=#6c6c6c guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=8 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=14 ctermbg=8 guifg=#5fafaf guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=8 guifg=NONE guibg=#303030 guisp=NONE cterm=NONE gui=NONE
hi helpLeadBlank ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi helpNormal ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=Black ctermbg=3 guifg=#262626 guibg=#87875f guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=3 ctermbg=8 guifg=#87875f guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=Black ctermbg=3 guifg=#262626 guibg=#87875f guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=3 ctermbg=8 guifg=#87875f guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=12 ctermbg=Black guifg=#8fafd7 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi VisualNOS ctermfg=NONE ctermbg=NONE guifg=NONE guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi VertSplit ctermfg=8 ctermbg=8 guifg=#444444 guibg=#444444 guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=Black ctermbg=12 guifg=#262626 guibg=#8fafd7 guisp=NONE cterm=NONE gui=NONE
hi Function ctermfg=11 ctermbg=NONE guifg=#ffffaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=8 ctermbg=NONE guifg=#585858 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=15 ctermbg=NONE guifg=#ffffff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=10 ctermbg=Black guifg=#87af87 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffChange ctermfg=13 ctermbg=Black guifg=#8787af guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffDelete ctermfg=1 ctermbg=Black guifg=#af5f5f guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi DiffText ctermfg=9 ctermbg=Black guifg=#ff8700 guibg=#262626 guisp=NONE cterm=NONE,reverse gui=NONE,reverse
hi IncSearch ctermfg=Black ctermbg=1 guifg=#262626 guibg=#af5f5f guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=Black ctermbg=11 guifg=#262626 guibg=#ffffaf guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=14 ctermbg=NONE guifg=#5fafaf guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=1 ctermbg=NONE guifg=#af5f5f guibg=NONE guisp=#af5f5f cterm=NONE,undercurl gui=NONE,undercurl
hi SpellCap ctermfg=14 ctermbg=NONE guifg=#5fafaf guibg=NONE guisp=#5fafaf cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=2 ctermbg=NONE guifg=#5f875f guibg=NONE guisp=#5f875f cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=9 ctermbg=NONE guifg=#ff8700 guibg=NONE guisp=#ff8700 cterm=NONE,undercurl gui=NONE,undercurl
hi ColorColumn ctermfg=NONE ctermbg=0 guifg=NONE guibg=#1c1c1c guisp=NONE cterm=NONE gui=NONE
hi debugPC         ctermbg=4 guibg=#5f87af
hi debugBreakpoint ctermbg=1  guibg=#af5f5f
let links = [
      \ ['Boolean', 'Constant'],
      \ ['Character', 'Constant'],
      \ ['Conditional', 'Statement'],
      \ ['Debug', 'Special'],
      \ ['Define', 'PreProc'],
      \ ['Delimiter', 'Special'],
      \ ['Exception', 'Statement'],
      \ ['Float', 'Number'],
      \ ['HelpCommand', 'Statement'],
      \ ['HelpExample', 'Statement'],
      \ ['Include', 'PreProc'],
      \ ['Keyword', 'Statement'],
      \ ['Label', 'Statement'],
      \ ['Macro', 'PreProc'],
      \ ['Number', 'Constant'],
      \ ['Operator', 'Statement'],
      \ ['PreCondit', 'PreProc'],
      \ ['Repeat', 'Statement'],
      \ ['SpecialChar', 'Special'],
      \ ['SpecialComment', 'Special'],
      \ ['StorageClass', 'Type'],
      \ ['Structure', 'Type'],
      \ ['Tag', 'Special'],
      \ ['Terminal', 'Normal'],
      \ ['Typedef', 'Type'],
      \ ['asciidocQuotedEmphasized', 'PreProc'],
      \ ['diffAdded', 'String'],
      \ ['diffBDiffer', 'WarningMsg'],
      \ ['diffCommon', 'WarningMsg'],
      \ ['diffDiffer', 'WarningMsg'],
      \ ['diffIdentical', 'WarningMsg'],
      \ ['diffIsA', 'WarningMsg'],
      \ ['diffNoEOL', 'WarningMsg'],
      \ ['diffOnly', 'WarningMsg'],
      \ ['diffRemoved', 'WarningMsg'],
      \ ['htmlBold', 'Normal'],
      \ ['htmlEndTag', 'htmlTagName'],
      \ ['htmlItalic', 'Normal'],
      \ ['htmlLink', 'Function'],
      \ ['htmlSpecialTagName', 'htmlTagName'],
      \ ['htmlTag', 'htmlTagName'],
      \ ['markdownItalic', 'PreProc'],
      \ ['xmlEndTag', 'Statement'],
      \ ['xmlTag', 'Statement'],
      \ ['xmlTagName', 'Statement'],
      \ ]

augroup Apprentice
  autocmd!
  autocmd ColorScheme * if expand("<amatch>") == "apprentice" | for link in links | execute 'hi link' link[0] link[1] | endfor | else | for link in links | execute 'hi link' link[0] 'NONE' | endfor | endif
augroup END
finish

" Background:      dark
" Color: almost_black #1c1c1c 234 0
" Color: darker_grey  #262626 235
" Color: dark_grey    #303030 236 8
" Color: grey         #444444 238 8
" Color: medium_grey  #585858 240 8
" Color: light_grey   #6c6c6c 242 7
" Color: lighter_grey #bcbcbc 250
" Color: white        #ffffff 231 15
" Color: purple       #5f5f87 60  5
" Color: light_purple #8787af 103 13
" Color: green        #5f875f 65  2
" Color: light_green  #87af87 108 10
" Color: aqua         #5f8787 66  6
" Color: light_aqua   #5fafaf 73  14
" Color: blue         #5f87af 67  4
" Color: light_blue   #8fafd7 110 12
" Color: red          #af5f5f 131 1
" Color: orange       #ff8700 208 9
" Color: ocre         #87875f 101 3
" Color: yellow       #ffffaf 229 11
" Normal           lighter_grey darker_grey
" Terminal         lighter_grey darker_grey
" LineNr           light_grey   almost_black
" FoldColumn       light_grey   almost_black
" Folded           light_grey   almost_black
" MatchParen       yellow       almost_black
" SignColumn       light_grey   almost_black
" Comment          medium_grey  none
" Conceal          lighter_grey none
" Constant         orange       none
" Error            red          none        reverse
" Identifier       blue         none
" Ignore           none         none
" PreProc          aqua         none
" Special          green        none
" Statement        light_blue   none
" String           light_green  none
" Todo             none         none        reverse
" Type             light_purple none
" Underlined       aqua         none        underline
" NonText          medium_grey  none
" Pmenu            lighter_grey grey
" PmenuSbar        none         medium_grey
" PmenuSel         darker_grey  aqua
" PmenuThumb       aqua         aqua
" ErrorMsg         darker_grey  red
" ModeMsg          darker_grey  light_green
" MoreMsg          aqua         none
" Question         light_green  none
" WarningMsg       red          none
" TabLine          ocre         grey
" TabLineFill      grey         grey
" TabLineSel       darker_grey  ocre
" Cursor           none         light_grey
" CursorColumn     none         dark_grey
" CursorLineNr     light_aqua   dark_grey
" CursorLine       none         dark_grey
" helpLeadBlank    none         none
" helpNormal       none         none
" StatusLine       darker_grey  ocre
" StatusLineNC     ocre         grey
" StatusLineTerm   darker_grey  ocre
" StatusLineTermNC ocre         grey
" Visual           light_blue   darker_grey reverse
" VisualNOS        none         none        underline
" VertSplit        grey         grey
" WildMenu         darker_grey  light_blue
" Function         yellow       none
" SpecialKey       medium_grey  none
" Title            white        none
" DiffAdd          light_green  darker_grey reverse
" DiffChange       light_purple darker_grey reverse
" DiffDelete       red          darker_grey reverse
" DiffText         orange       darker_grey reverse
" IncSearch        darker_grey  red
" Search           darker_grey  yellow
" Directory        light_aqua   none
" SpellBad         red          none        undercurl guisp=red
" SpellCap         light_aqua   none        undercurl guisp=light_aqua
" SpellLocal       green        none        undercurl guisp=green
" SpellRare        orange       none        undercurl guisp=orange
" ColorColumn      none         almost_black
