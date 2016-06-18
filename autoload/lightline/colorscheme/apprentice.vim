" Color palette
let s:gui00 = "#1c1c1c"
let s:gui01 = "#af5f5f"
let s:gui02 = "#5f875f"
let s:gui03 = "#87875f"
let s:gui04 = "#5f87af"
let s:gui05 = "#5f5f87"
let s:gui06 = "#5f8787"
let s:gui07 = "#6c6c6c"
let s:gui08 = "#585858"
let s:gui09 = "#ff8700"
let s:gui0A = "#87af87"
let s:gui0B = "#ffffaf"
let s:gui0C = "#8fafd7"
let s:gui0D = "#8787af"
let s:gui0E = "#5fafaf"
let s:gui0F = "#ffffff"
let s:guiBG = "#262626"
let s:guiFG = "#bcbcbc"

let s:cterm00 = "234"
let s:cterm01 = "131"
let s:cterm02 = "65"
let s:cterm03 = "101"
let s:cterm04 = "67"
let s:cterm05 = "60"
let s:cterm06 = "66"
let s:cterm07 = "242"
let s:cterm08 = "240"
let s:cterm09 = "208"
let s:cterm0A = "108"
let s:cterm0B = "229"
let s:cterm0C = "110"
let s:cterm0D = "103"
let s:cterm0E = "73"
let s:cterm0F = "231"
let s:ctermBG = "235"
let s:ctermFG = "250"

let s:guiWhite = "#ffffff"
let s:guiGray = "#585858"
let s:ctermWhite = "231"
let s:ctermGray = "240"

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.inactive.left   = [ [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ] ]
let s:p.inactive.middle = [ [ s:gui08 , s:guiBG , s:cterm08 , s:ctermBG ] ]
let s:p.inactive.right  = [ [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ] ]
let s:p.insert.left     = [ [ s:guiBG , s:gui02 , s:ctermBG , s:cterm02 ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.insert.right    = [ [ s:guiBG , s:gui02 , s:ctermBG , s:cterm02 ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.normal.error    = [ [ '#1c1c1c', '#af5f5f', 234, 131 ] ]
let s:p.normal.left     = [ [ s:guiBG , s:gui03 , s:ctermBG , s:cterm04 ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.normal.middle   = [ [ s:guiFG , s:guiBG , s:ctermFG , s:ctermBG  ]]
let s:p.normal.right    = [ [ s:guiBG , s:gui03 , s:ctermBG , s:cterm04 ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.normal.warning  = [ [ '#1c1c1c', '#ff8700', 234, 208 ] ]
let s:p.replace.left    = [ [ s:guiBG , s:gui01 , s:ctermBG , s:cterm01 ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.replace.right   = [ [ s:guiBG , s:gui01 , s:ctermBG , s:cterm01 ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.tabline.left    = [ [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ] ]
let s:p.tabline.middle  = [ [ s:guiFG , s:guiBG , s:ctermFG , s:ctermBG ] ]
let s:p.tabline.right   = [ [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ] ]
let s:p.tabline.tabsel  = [ [ s:guiBG , s:gui03 , s:ctermBG , s:cterm03 ] ]
let s:p.visual.left     = [ [ s:guiBG , s:gui0B , s:ctermBG , s:cterm0B ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]
let s:p.visual.right    = [ [ s:guiBG , s:gui0B , s:ctermBG , s:cterm0B ], [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]]

let g:lightline#colorscheme#apprentice#palette = s:p
