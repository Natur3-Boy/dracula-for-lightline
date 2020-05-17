" =============================================================================
" Filename: lightline/autoload/lightline/colorscheme/dracula.vim
" Author: Dan Hutson
" License: MIT License
" Last Change: 2020/16/05
" =============================================================================

"" I used values pulled from draculatheme.com/contribute and the boiler plate
"" from another colorscheme.

"" These are commented with the palette I used
let s:background = '#282a36'	"Background 
let s:cline = '#44475a' 	"Current Line
let s:foreground = '#6272a4' 	"Foreground
let s:comment = '#f8f8f2' 	"Comment

"" These are self-explanatory
let s:yellow = '#f1fa8c' 
let s:orange = '#ffb86c' 
let s:red = '#ff5555' 
let s:pink = '#ff79c6' 
let s:purple = '#bd93f9' 
let s:blue = '#6272a4' 
let s:cyan = '#8be9fd' 
let s:green = '#50fa7b' 
let s:white = '#ffffff' 

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:background, s:blue ], [ s:comment, s:cline ] ]
let s:p.normal.right = [ [ s:background, s:foreground ], [ s:comment, s:cline ] ]
let s:p.inactive.right = [ [ s:background, s:cline ], [ s:foreground, s:background ] ]
let s:p.inactive.left =  [ [ s:foreground, s:background ], [ s:cline, s:background ] ]
let s:p.insert.left = [ [ s:background, s:green ], [ s:comment, s:cline ] ]
let s:p.replace.left = [ [ s:background, s:pink ], [ s:comment, s:cline ] ]
let s:p.visual.left = [ [ s:background, s:purple], [ s:comment, s:cline ] ]
let s:p.normal.middle = [ [ s:foreground, s:background ] ]
let s:p.inactive.middle = [ [ s:cline, s:background ] ]
let s:p.tabline.left = [ [ s:comment, s:cline ] ]
let s:p.tabline.tabsel = [ [ s:comment, s:background ] ]
let s:p.tabline.middle = [ [ s:cline, s:foreground ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:background ] ]
let s:p.normal.warning = [ [ s:yellow, s:cline ] ]

let g:lightline#colorscheme#dracula#palette = lightline#colorscheme#fill(s:p)
