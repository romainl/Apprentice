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

let g:airline#themes#apprentice#palette = {}
let s:modified = { 'airline_c': [ s:gui09, '', s:cterm09, '', '' ] }

" Normal mode
let s:N1 = [ s:guiBG , s:gui04 , s:ctermBG , s:cterm04  ]
let s:N2 = [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]
let s:N3 = [ s:guiFG , s:guiBG , s:ctermFG , s:ctermBG  ]
let g:airline#themes#apprentice#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#apprentice#palette.normal_modified = s:modified

" Insert mode
let s:I1 = [ s:guiBG , s:gui02 , s:ctermBG , s:cterm02  ]
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#apprentice#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#apprentice#palette.insert_modified = s:modified

" Visual mode
let s:V1 = [ s:guiBG , s:gui0B, s:ctermBG , s:cterm0B ]
let s:V2 = s:N2
let s:V3 = s:N3
let g:airline#themes#apprentice#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#apprentice#palette.visual_modified = s:modified

" Replace mode
let s:R1 = [ s:guiBG , s:gui01 , s:ctermBG, s:cterm01 ]
let s:R2 = s:N2
let s:R3 = s:N3
let g:airline#themes#apprentice#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#apprentice#palette.replace_modified = s:modified

" Inactive mode
let s:IN1 = [ s:guiBG , s:gui08 , s:ctermBG , s:cterm08 ]
let s:IN2 = [ s:gui08 , s:guiBG , s:cterm08 , s:ctermBG ]
let s:IN3 = s:IN2
let g:airline#themes#apprentice#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#apprentice#palette.inactive_modified = s:modified

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = s:N1
let s:CP2 = s:N2
let s:CP3 = s:N3

let g:airline#themes#apprentice#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
