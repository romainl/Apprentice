let g:airline#themes#apprentice#palette = {}

let s:N1   = [ '#bcbcbc', '#5f5f87', 250, 60 ]
let s:N2   = [ '#1c1c1c', '#ff8700', 234, 65 ]
let s:N3   = [ '#262626', '#87875f', 235, 101 ]
let g:airline#themes#apprentice#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#apprentice#palette.normal.airline_warning = [ '#1c1c1c', '#ffffaf', 234, 1 ]

let s:I1 = [ '#1c1c1c', '#87af87', 234, 108 ]
let g:airline#themes#apprentice#palette.insert = copy(g:airline#themes#apprentice#palette.normal)
let g:airline#themes#apprentice#palette.insert.airline_l = [ '#1c1c1c', '#87af87', 234, 108 ]
let g:airline#themes#apprentice#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , 250 , 60 ] ,
      \ }


let g:airline#themes#apprentice#palette.replace = copy(g:airline#themes#apprentice#palette.insert)
let g:airline#themes#apprentice#palette.replace.airline_a = [ '#1c1c1c', '#af5f5f', 234, 131 ]


let s:V1 = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:V2 = [ '#000000' , '#ff5f00' , 232 , 202 ]
let s:V3 = [ '#ffffff' , '#5f0000' , 15  , 52  ]
let g:airline#themes#apprentice#palette.visual = copy(g:airline#themes#apprentice#palette.insert)


let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#apprentice#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

let g:airline#themes#apprentice#palette.accents = {
      \ 'red': [ '#AF5F5F' , '' , 235 , '', 'bold' ]
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#apprentice#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#bcbcbc', '#5f5f87', 101, 101 ],
      \ [ '#87875f', '#87875f', 250, 60 ],
      \ [ '#1c1c1c', '#ff8700', 234, 103 ]
			\)
