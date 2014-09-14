let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:p.inactive.left   = [ [ '#1c1c1c', '#6c6c6c', 234, 242 ] ]
let s:p.inactive.middle = [ [ '#6c6c6c', '#6c6c6c', 242, 242 ] ]
let s:p.inactive.right  = [ [ '#1c1c1c', '#585858', 234, 240 ], [ '#1c1c1c', '#6c6c6c', 234, 242 ], [ '#1c1c1c', '#6c6c6c', 234, 242 ] ]
let s:p.insert.left     = [ [ '#1c1c1c', '#87af87', 234, 108 ], [ '#1c1c1c', '#87875f', 234, 101 ] ]
let s:p.normal.error    = [ [ '#1c1c1c', '#af5f5f', 234, 131 ] ]
let s:p.normal.left     = [ [ '#bcbcbc', '#5f5f87', 250, 60 ], [ '#1c1c1c', '#87875f', 234, 101 ] ]
let s:p.normal.middle   = [ [ '#87875f', '#87875f', 101, 101 ] ]
let s:p.normal.right    = [ [ '#1c1c1c', '#ff8700', 234, 65 ], [ '#1c1c1c', '#ffffaf', 234, 108 ], [ '#1c1c1c', '#87875f', 234, 101 ] ]
let s:p.normal.warning  = [ [ '#1c1c1c', '#ff8700', 234, 208 ] ]
let s:p.replace.left    = [ [ '#1c1c1c', '#af5f5f', 234, 131 ], [ '#1c1c1c', '#87875f', 234, 101 ] ]
let s:p.tabline.left    = [ [ '#585858', '#1c1c1c', 240, 234 ] ]
let s:p.tabline.middle  = [ [ '#1c1c1c', '#1c1c1c', 234, 234 ] ]
let s:p.tabline.right   = [ [ '#585858', '#1c1c1c', 240, 234 ] ]
let s:p.tabline.tabsel  = [ [ '#5fafaf', '#303030', 73, 236 ] ]
let s:p.visual.left     = [ [ '#1c1c1c', '#8fafd7', 234, 110 ], [ '#1c1c1c', '#87875f', 234, 101 ] ]

let g:lightline#colorscheme#apprentice#palette = s:p
