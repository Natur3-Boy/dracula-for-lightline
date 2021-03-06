" =============================================================================
" Filename: autoload/lightline/colorscheme/dracula.vim
" Author: Natur3-Boy
" License: MIT License
" Last Change: 2020/21/05
" =============================================================================

"" I used values pulled from draculatheme.com/contribute and the boiler plate
"" from another colorscheme.

"" These are whiteed with the palette I used
let s:blacker 	= '#202030'	"made this one up for normal middle; integrate orange and cyan to get rid of this.
let s:black 	= '#282a36'
let s:gray 	= '#44475a'
let s:darkblue 	= '#6272a4' 	
let s:purple 	= '#bd93f9' 	"Visual Mode

let s:white 	= '#f8f8f2' 
let s:pink 	= '#ff79c6' 	"Replace Mode
let s:green 	= '#50fa7b' 	"Insert Mode

let s:orange 	= '#ffb86c' 	"Not used
let s:cyan 	= '#8be9fd' 	"Not used

let s:red 	= '#ff5555' 	"Error
let s:yellow 	= '#f1fa8c' 	"Warning




if exists('g:lightline')

	let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
	let s:p.normal.left = [ [ s:black, s:darkblue ], [ s:white, s:gray ] ]
	let s:p.normal.right = [ [ s:black, s:darkblue ], [ s:white, s:gray ] ]
	let s:p.inactive.right = [ [ s:black, s:gray ], [ s:darkblue, s:black ] ]
	let s:p.inactive.left =  [ [ s:darkblue, s:black ], [ s:gray, s:black ] ]
	let s:p.insert.left = [ [ s:black, s:green ], [ s:white, s:gray ] ]
	let s:p.replace.left = [ [ s:black, s:pink ], [ s:white, s:gray ] ]
	let s:p.visual.left = [ [ s:black, s:purple], [ s:white, s:gray ] ]
	let s:p.normal.middle = [ [ s:darkblue, s:blacker ] ]
	let s:p.inactive.middle = [ [ s:gray, s:black ] ]
	let s:p.tabline.left = [ [ s:white, s:gray ] ]
	let s:p.tabline.tabsel = [ [ s:white, s:black ] ]
	let s:p.tabline.middle = [ [ s:gray, s:darkblue ] ]
	let s:p.tabline.right = copy(s:p.normal.right)
	let s:p.normal.error = [ [ s:red, s:black ] ]
	let s:p.normal.warning = [ [ s:yellow, s:gray ] ]

	let g:lightline#colorscheme#dracula#palette = lightline#colorscheme#fill(s:p)

endif
