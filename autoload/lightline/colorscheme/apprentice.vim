let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
" fg / bg
let s:p.normal.left     = [ [ '#262626', '#8787af', 234, 103, 'bold' ], [ '#bcbcbc', '#303030', 250, 236 ] ]
let s:p.normal.right    = [ [ '#1c1c1c', '#bcbcbc', 234, 250 ], [ '#1c1c1c', '#6c6c6c', 234, 242 ], [ '#bcbcbc', '#585858', 250, 240 ] ]
let s:p.inactive.right  = [ [ '#1c1c1c', '#6c6c6c', 234, 242 ], [ '#1c1c1c', '#585858', 234, 240 ], [ '#1c1c1c', '#444444', 234, 238 ] ]
let s:p.inactive.left   = [ [ '#6c6c6c', '#303030', 242, 236 ] ]
let s:p.insert.left     = [ [ '#262626', '#87af87', 234, 108, 'bold' ], [ '#bcbcbc', '#303030', 250, 236 ] ]
let s:p.replace.left    = [ [ '#262626', '#af5f5f', 235, 131, 'bold' ], [ '#bcbcbc', '#303030', 250, 236 ] ]
let s:p.visual.left     = [ [ '#262626', '#8fafd7', 235, 110, 'bold' ], [ '#bcbcbc', '#303030', 250, 236 ] ]
let s:p.normal.middle   = [ [ '#6c6c6c', '#1c1c1c', 242, 234 ] ]
let s:p.inactive.middle = [ [ '#1c1c1c', '#1c1c1c', 234, 234 ] ]
let s:p.normal.error    = [ [ '#262626', '#af5f5f', 235, 131 ] ]
let s:p.normal.warning  = [ [ '#262626', '#ff8700', 235, 208 ] ]
" not sure
let s:p.tabline.left    = [ [ '#585858', '#1c1c1c', 240, 234 ] ]
let s:p.tabline.tabsel  = [ [ '#5fafaf', '#303030', 73, 236 ] ]
let s:p.tabline.middle  = [ [ '#1c1c1c', '#1c1c1c', 234, 234 ] ]
let s:p.tabline.right   = [ [ '#bcbcbc', '#6c6c6c', 250, 242 ] ]

let g:lightline#colorscheme#apprentice#palette = s:p
