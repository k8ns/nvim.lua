" Last login: Tue Aug 27
" Name:         hmaxm3
" Description:  Hubba hubba hubba.
" Author:       Maxim Kim <habamax@gmail.com>
" Maintainer:   Maxim Kim <habamax@gmail.com>
" Website:      https://github.com/vim/colorschemes
" License:      Same as Vim
" Last Change:  2024 Aug 15

" Generated by Colortemplate v2.2.3

set background=dark

" hi clear
source $VIMRUNTIME/colors/vim.lua " Nvim: revert to Vim default color scheme
let g:colors_name = 'habamax'

let s:t_Co = &t_Co

highlight Cursor guifg=black guibg=lightgray

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#1c1c1c', '#af5f5f', '#5faf5f', '#af875f', '#5f87af', '#af87af', '#5f8787', '#9e9e9e', '#767676', '#d75f87', '#87d787', '#d7af87', '#5fafd7', '#d787d7', '#87afaf', '#bcbcbc']
  " Nvim uses g:terminal_color_{0-15} instead
  for i in range(g:terminal_ansi_colors->len())
    let g:terminal_color_{i} = g:terminal_ansi_colors[i]
  endfor
endif

hi! link Terminal Normal
hi! link StatuslineTerm Statusline
hi! link StatuslineTermNC StatuslineNC
hi! link MessageWindow Pmenu
hi! link javaScriptFunction Statement
hi! link javaScriptIdentifier Statement
hi! link sqlKeyword Statement
hi! link yamlBlockMappingKey Statement
hi! link rubyMacro Statement
hi! link rubyDefine Statement
hi! link vimVar Normal
hi! link vimOper Normal
hi! link vimSep Normal
hi! link vimParenSep Normal
hi! link vimCommentString Comment
hi! link markdownUrl String
hi Normal guifg=#bcbcbc guibg=#1c1c1c gui=NONE cterm=NONE
hi Statusline guifg=#1c1c1c guibg=#9e9e9e gui=NONE cterm=NONE
hi StatuslineNC guifg=#1c1c1c guibg=#767676 gui=NONE cterm=NONE
hi VertSplit guifg=#767676 guibg=#767676 gui=NONE cterm=NONE
hi TabLine guifg=#1c1c1c guibg=#767676 gui=NONE cterm=NONE
hi TabLineFill guifg=#1c1c1c guibg=#767676 gui=NONE cterm=NONE
hi TabLineSel guifg=#1c1c1c guibg=#9e9e9e gui=bold cterm=bold
hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi ToolbarButton guifg=#767676 guibg=#1c1c1c gui=bold,reverse cterm=bold,reverse
hi QuickFixLine guifg=#1c1c1c guibg=#5f87af gui=NONE cterm=NONE
hi CursorLineNr guifg=#dadada guibg=NONE gui=bold cterm=bold
hi LineNr guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi LineNrAbove guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi LineNrBelow guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi NonText guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi FoldColumn guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi Visual guifg=#87afaf guibg=#1c1c1c gui=reverse cterm=reverse
hi VisualNOS guifg=#1c1c1c guibg=#5f8787 gui=NONE cterm=NONE
hi Pmenu guifg=NONE guibg=#3a3a3a gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#767676 gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel guifg=NONE guibg=#585858 gui=NONE cterm=NONE
hi PmenuKind guifg=#5f8787 guibg=#3a3a3a gui=NONE cterm=NONE
hi PmenuKindSel guifg=#5f8787 guibg=#585858 gui=NONE cterm=NONE
hi PmenuExtra guifg=#767676 guibg=#3a3a3a gui=NONE cterm=NONE
hi PmenuExtraSel guifg=#9e9e9e guibg=#585858 gui=NONE cterm=NONE
hi PmenuMatch guifg=#ffaf5f guibg=#3a3a3a gui=NONE cterm=NONE
hi PmenuMatchSel guifg=#ffaf5f guibg=#585858 gui=NONE cterm=NONE
hi SignColumn guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Error guifg=#af5f5f guibg=#1c1c1c gui=reverse cterm=reverse
hi ErrorMsg guifg=#af5f5f guibg=#1c1c1c gui=reverse cterm=reverse
hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi MoreMsg guifg=#5faf5f guibg=NONE gui=NONE cterm=NONE
hi Question guifg=#d7af87 guibg=NONE gui=NONE cterm=NONE
hi WarningMsg guifg=#d75f87 guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#dadada guibg=NONE gui=bold cterm=bold
hi MatchParen guifg=#ff00af guibg=NONE gui=bold cterm=bold
hi Search guifg=#5fafd7 guibg=#1c1c1c gui=reverse cterm=reverse
hi IncSearch guifg=#ffaf5f guibg=#1c1c1c gui=reverse cterm=reverse
hi CurSearch guifg=#ffaf5f guibg=#1c1c1c gui=reverse cterm=reverse
hi WildMenu guifg=#1c1c1c guibg=#d7af87 gui=bold cterm=bold
hi debugPC guifg=#1c1c1c guibg=#5f87af gui=NONE cterm=NONE
hi debugBreakpoint guifg=#1c1c1c guibg=#d75f87 gui=NONE cterm=NONE
hi Cursor guifg=#000000 guibg=#dadada gui=reverse cterm=reverse
hi lCursor guifg=#1c1c1c guibg=#5fff00 gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#303030 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE guibg=#303030 gui=NONE cterm=NONE
hi Folded guifg=#9e9e9e guibg=#262626 gui=NONE cterm=NONE
hi ColorColumn guifg=NONE guibg=#3a3a3a gui=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=#d75f5f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellCap guifg=NONE guibg=NONE guisp=#ffaf5f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellLocal guifg=NONE guibg=NONE guisp=#5fd75f gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
hi SpellRare guifg=NONE guibg=NONE guisp=#d787d7 gui=undercurl ctermfg=NONE ctermbg=NONE cterm=underline
hi Comment guifg=#767676 guibg=NONE gui=NONE cterm=NONE
hi Constant guifg=#d75f87 guibg=NONE gui=NONE cterm=NONE
hi String guifg=#5faf5f guibg=NONE gui=NONE cterm=NONE
hi Character guifg=#87d787 guibg=NONE gui=NONE cterm=NONE
hi Identifier guifg=#87afaf guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#af87af guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#af875f guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#5f87af guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#5f8787 guibg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Title guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Directory guifg=#87afaf guibg=NONE gui=bold cterm=bold
hi Conceal guifg=#585858 guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Debug guifg=#5f8787 guibg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=#5faf5f guibg=NONE gui=reverse cterm=reverse
hi DiffChange guifg=#5f87af guibg=NONE gui=reverse cterm=reverse
hi DiffText guifg=#af87af guibg=NONE gui=reverse cterm=reverse
hi DiffDelete guifg=#af5f5f guibg=NONE gui=reverse cterm=reverse
hi Added guifg=#5fd75f guibg=NONE gui=NONE cterm=NONE
hi Changed guifg=#ffaf5f guibg=NONE gui=NONE cterm=NONE
hi Removed guifg=#d75f5f guibg=NONE gui=NONE cterm=NONE

if s:t_Co >= 256
  hi! link Terminal Normal
  hi! link StatuslineTerm Statusline
  hi! link StatuslineTermNC StatuslineNC
  hi! link MessageWindow Pmenu
  hi! link javaScriptFunction Statement
  hi! link javaScriptIdentifier Statement
  hi! link sqlKeyword Statement
  hi! link yamlBlockMappingKey Statement
  hi! link rubyMacro Statement
  hi! link rubyDefine Statement
  hi! link vimVar Normal
  hi! link vimOper Normal
  hi! link vimSep Normal
  hi! link vimParenSep Normal
  hi! link vimCommentString Comment
  hi! link markdownUrl String
  hi Normal ctermfg=250 ctermbg=234 cterm=NONE
  hi Statusline ctermfg=234 ctermbg=247 cterm=NONE
  hi StatuslineNC ctermfg=234 ctermbg=243 cterm=NONE
  hi VertSplit ctermfg=243 ctermbg=243 cterm=NONE
  hi TabLine ctermfg=234 ctermbg=243 cterm=NONE
  hi TabLineFill ctermfg=234 ctermbg=243 cterm=NONE
  hi TabLineSel ctermfg=234 ctermbg=247 cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=243 ctermbg=234 cterm=bold,reverse
  hi QuickFixLine ctermfg=234 ctermbg=67 cterm=NONE
  hi CursorLineNr ctermfg=253 ctermbg=NONE cterm=bold
  hi LineNr ctermfg=240 ctermbg=NONE cterm=NONE
  hi LineNrAbove ctermfg=240 ctermbg=NONE cterm=NONE
  hi LineNrBelow ctermfg=240 ctermbg=NONE cterm=NONE
  hi NonText ctermfg=240 ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=240 ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=240 ctermbg=NONE cterm=NONE
  hi Visual ctermfg=109 ctermbg=234 cterm=reverse
  hi VisualNOS ctermfg=234 ctermbg=66 cterm=NONE
  hi Pmenu ctermfg=NONE ctermbg=237 cterm=NONE
  hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
  hi PmenuSel ctermfg=NONE ctermbg=240 cterm=NONE
  hi PmenuKind ctermfg=66 ctermbg=237 cterm=NONE
  hi PmenuKindSel ctermfg=66 ctermbg=240 cterm=NONE
  hi PmenuExtra ctermfg=243 ctermbg=237 cterm=NONE
  hi PmenuExtraSel ctermfg=247 ctermbg=240 cterm=NONE
  hi PmenuMatch ctermfg=215 ctermbg=237 cterm=NONE
  hi PmenuMatchSel ctermfg=215 ctermbg=240 cterm=NONE
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Error ctermfg=131 ctermbg=234 cterm=reverse
  hi ErrorMsg ctermfg=131 ctermbg=234 cterm=reverse
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=71 ctermbg=NONE cterm=NONE
  hi Question ctermfg=180 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=168 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=253 ctermbg=NONE cterm=bold
  hi MatchParen ctermfg=199 ctermbg=NONE cterm=bold
  hi Search ctermfg=74 ctermbg=234 cterm=reverse
  hi IncSearch ctermfg=215 ctermbg=234 cterm=reverse
  hi CurSearch ctermfg=215 ctermbg=234 cterm=reverse
  hi WildMenu ctermfg=234 ctermbg=180 cterm=bold
  hi debugPC ctermfg=234 ctermbg=67 cterm=NONE
  hi debugBreakpoint ctermfg=234 ctermbg=168 cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
  hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
  hi Folded ctermfg=247 ctermbg=235 cterm=NONE
  hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE
  hi SpellBad ctermfg=167 ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=215 ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=77 ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=176 ctermbg=NONE cterm=underline
  hi Comment ctermfg=243 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=168 ctermbg=NONE cterm=NONE
  hi String ctermfg=71 ctermbg=NONE cterm=NONE
  hi Character ctermfg=114 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=109 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=139 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=137 ctermbg=NONE cterm=NONE
  hi Type ctermfg=67 ctermbg=NONE cterm=NONE
  hi Special ctermfg=66 ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi Title ctermfg=NONE ctermbg=NONE cterm=bold
  hi Directory ctermfg=109 ctermbg=NONE cterm=bold
  hi Conceal ctermfg=240 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Debug ctermfg=66 ctermbg=NONE cterm=NONE
  hi DiffAdd ctermfg=71 ctermbg=NONE cterm=reverse
  hi DiffChange ctermfg=67 ctermbg=NONE cterm=reverse
  hi DiffText ctermfg=139 ctermbg=NONE cterm=reverse
  hi DiffDelete ctermfg=131 ctermbg=NONE cterm=reverse
  hi Added ctermfg=77 ctermbg=NONE cterm=NONE
  hi Changed ctermfg=215 ctermbg=NONE cterm=NONE
  hi Removed ctermfg=167 ctermbg=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 16
  hi Normal ctermfg=white ctermbg=black cterm=NONE
  hi Statusline ctermfg=black ctermbg=gray cterm=NONE
  hi StatuslineNC ctermfg=black ctermbg=darkgray cterm=NONE
  hi VertSplit ctermfg=darkgray ctermbg=darkgray cterm=NONE
  hi TabLine ctermfg=black ctermbg=darkgray cterm=NONE
  hi TabLineFill ctermfg=black ctermbg=darkgray cterm=NONE
  hi TabLineSel ctermfg=black ctermbg=gray cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=darkgray ctermbg=black cterm=bold,reverse
  hi QuickFixLine ctermfg=black ctermbg=darkblue cterm=NONE
  hi CursorLineNr ctermfg=white ctermbg=NONE cterm=bold
  hi LineNr ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi LineNrAbove ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi LineNrBelow ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi NonText ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi EndOfBuffer ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi Visual ctermfg=cyan ctermbg=black cterm=reverse
  hi VisualNOS ctermfg=black ctermbg=darkcyan cterm=NONE
  hi Pmenu ctermfg=black ctermbg=gray cterm=NONE
  hi PmenuThumb ctermfg=gray ctermbg=black cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=gray cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuKind ctermfg=darkred ctermbg=gray cterm=NONE
  hi PmenuKindSel ctermfg=darkred ctermbg=darkyellow cterm=NONE
  hi PmenuExtra ctermfg=darkgray ctermbg=gray cterm=NONE
  hi PmenuExtraSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuMatch ctermfg=black ctermbg=gray cterm=bold
  hi PmenuMatchSel ctermfg=black ctermbg=darkyellow cterm=bold
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Error ctermfg=darkred ctermbg=black cterm=reverse
  hi ErrorMsg ctermfg=darkred ctermbg=black cterm=reverse
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Question ctermfg=yellow ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=red ctermbg=NONE cterm=NONE
  hi Todo ctermfg=white ctermbg=NONE cterm=bold
  hi MatchParen ctermfg=magenta ctermbg=NONE cterm=bold
  hi Search ctermfg=blue ctermbg=black cterm=reverse
  hi IncSearch ctermfg=red ctermbg=black cterm=reverse
  hi CurSearch ctermfg=red ctermbg=black cterm=reverse
  hi WildMenu ctermfg=black ctermbg=yellow cterm=bold
  hi debugPC ctermfg=black ctermbg=darkblue cterm=NONE
  hi debugBreakpoint ctermfg=black ctermbg=red cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Folded ctermfg=black ctermbg=darkyellow cterm=NONE
  hi ColorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi SpellBad ctermfg=darkred ctermbg=NONE cterm=underline
  hi SpellCap ctermfg=darkyellow ctermbg=NONE cterm=underline
  hi SpellLocal ctermfg=darkgreen ctermbg=NONE cterm=underline
  hi SpellRare ctermfg=magenta ctermbg=NONE cterm=underline
  hi Comment ctermfg=darkgray ctermbg=NONE cterm=NONE
  hi Constant ctermfg=red ctermbg=NONE cterm=NONE
  hi String ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Character ctermfg=green ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=cyan ctermbg=NONE cterm=NONE
  hi Statement ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi Type ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi Special ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi Title ctermfg=NONE ctermbg=NONE cterm=bold
  hi Directory ctermfg=cyan ctermbg=NONE cterm=bold
  hi Conceal ctermfg=darkgrey ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Debug ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi DiffAdd ctermfg=darkgreen ctermbg=NONE cterm=reverse
  hi DiffChange ctermfg=darkblue ctermbg=NONE cterm=reverse
  hi DiffText ctermfg=darkmagenta ctermbg=NONE cterm=reverse
  hi DiffDelete ctermfg=darkred ctermbg=NONE cterm=reverse
  hi Added ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Changed ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi Removed ctermfg=darkred ctermbg=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 8
  hi Normal ctermfg=gray ctermbg=black cterm=NONE
  hi Statusline ctermfg=gray ctermbg=black cterm=bold,reverse
  hi StatuslineNC ctermfg=gray ctermbg=black cterm=reverse
  hi VertSplit ctermfg=gray ctermbg=gray cterm=NONE
  hi TabLine ctermfg=black ctermbg=gray cterm=NONE
  hi TabLineFill ctermfg=gray ctermbg=gray cterm=NONE
  hi TabLineSel ctermfg=black ctermbg=gray cterm=bold
  hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
  hi ToolbarButton ctermfg=gray ctermbg=black cterm=reverse
  hi QuickFixLine ctermfg=black ctermbg=darkblue cterm=NONE
  hi CursorLineNr ctermfg=darkyellow ctermbg=NONE cterm=bold
  hi LineNr ctermfg=gray ctermbg=NONE cterm=bold
  hi LineNrAbove ctermfg=gray ctermbg=NONE cterm=bold
  hi LineNrBelow ctermfg=gray ctermbg=NONE cterm=bold
  hi NonText ctermfg=gray ctermbg=NONE cterm=bold
  hi EndOfBuffer ctermfg=gray ctermbg=NONE cterm=bold
  hi SpecialKey ctermfg=gray ctermbg=NONE cterm=bold
  hi FoldColumn ctermfg=gray ctermbg=NONE cterm=bold
  hi Visual ctermfg=black ctermbg=darkcyan cterm=NONE
  hi VisualNOS ctermfg=black ctermbg=darkcyan cterm=NONE
  hi Pmenu ctermfg=black ctermbg=gray cterm=NONE
  hi PmenuThumb ctermfg=gray ctermbg=black cterm=NONE
  hi PmenuSbar ctermfg=NONE ctermbg=gray cterm=NONE
  hi PmenuSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuKind ctermfg=darkred ctermbg=gray cterm=NONE
  hi PmenuKindSel ctermfg=darkred ctermbg=darkyellow cterm=NONE
  hi PmenuExtra ctermfg=black ctermbg=gray cterm=NONE
  hi PmenuExtraSel ctermfg=black ctermbg=darkyellow cterm=NONE
  hi PmenuMatch ctermfg=black ctermbg=gray cterm=bold
  hi PmenuMatchSel ctermfg=black ctermbg=darkyellow cterm=bold
  hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Error ctermfg=darkred ctermbg=gray cterm=bold,reverse
  hi ErrorMsg ctermfg=darkred ctermbg=gray cterm=bold,reverse
  hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=bold
  hi MoreMsg ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Question ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=darkred ctermbg=NONE cterm=NONE
  hi Todo ctermfg=gray ctermbg=NONE cterm=bold
  hi MatchParen ctermfg=magenta ctermbg=NONE cterm=bold
  hi Search ctermfg=black ctermbg=darkblue cterm=NONE
  hi IncSearch ctermfg=black ctermbg=darkyellow cterm=NONE
  hi CurSearch ctermfg=black ctermbg=darkyellow cterm=NONE
  hi WildMenu ctermfg=black ctermbg=darkyellow cterm=NONE
  hi debugPC ctermfg=black ctermbg=darkblue cterm=NONE
  hi debugBreakpoint ctermfg=black ctermbg=darkcyan cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=NONE cterm=underline
  hi CursorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi Folded ctermfg=black ctermbg=darkyellow cterm=NONE
  hi ColorColumn ctermfg=black ctermbg=darkyellow cterm=NONE
  hi SpellBad ctermfg=darkred ctermbg=gray cterm=reverse
  hi SpellCap ctermfg=darkblue ctermbg=gray cterm=reverse
  hi SpellLocal ctermfg=darkgreen ctermbg=black cterm=reverse
  hi SpellRare ctermfg=darkmagenta ctermbg=gray cterm=reverse
  hi Comment ctermfg=gray ctermbg=NONE cterm=bold
  hi Constant ctermfg=darkred ctermbg=NONE cterm=NONE
  hi String ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Character ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=gray ctermbg=NONE cterm=NONE
  hi Statement ctermfg=darkmagenta ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi Type ctermfg=darkblue ctermbg=NONE cterm=NONE
  hi Special ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
  hi Title ctermfg=NONE ctermbg=NONE cterm=bold
  hi Directory ctermfg=darkcyan ctermbg=NONE cterm=bold
  hi Conceal ctermfg=gray ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
  hi Debug ctermfg=darkcyan ctermbg=NONE cterm=NONE
  hi DiffAdd ctermfg=darkgreen ctermbg=NONE cterm=reverse
  hi DiffChange ctermfg=darkblue ctermbg=NONE cterm=reverse
  hi DiffText ctermfg=darkmagenta ctermbg=NONE cterm=reverse
  hi DiffDelete ctermfg=darkred ctermbg=NONE cterm=reverse
  hi Added ctermfg=darkgreen ctermbg=NONE cterm=NONE
  hi Changed ctermfg=darkyellow ctermbg=NONE cterm=NONE
  hi Removed ctermfg=darkred ctermbg=NONE cterm=NONE
  unlet s:t_Co
  finish
endif

if s:t_Co >= 0
  hi Normal term=NONE
  hi ColorColumn term=reverse
  hi Conceal term=NONE
  hi Cursor term=reverse
  hi CursorColumn term=reverse
  hi CursorLine term=underline
  hi CursorLineNr term=bold
  hi DiffAdd term=reverse
  hi DiffChange term=NONE
  hi DiffDelete term=reverse
  hi DiffText term=reverse
  hi Directory term=NONE
  hi EndOfBuffer term=NONE
  hi ErrorMsg term=bold,reverse
  hi FoldColumn term=NONE
  hi Folded term=NONE
  hi IncSearch term=bold,reverse,underline
  hi LineNr term=NONE
  hi MatchParen term=bold,underline
  hi ModeMsg term=bold
  hi MoreMsg term=NONE
  hi NonText term=NONE
  hi Pmenu term=reverse
  hi PmenuSbar term=reverse
  hi PmenuSel term=bold
  hi PmenuThumb term=NONE
  hi Question term=standout
  hi Search term=reverse
  hi SignColumn term=reverse
  hi SpecialKey term=bold
  hi SpellBad term=underline
  hi SpellCap term=underline
  hi SpellLocal term=underline
  hi SpellRare term=underline
  hi StatusLine term=bold,reverse
  hi StatusLineNC term=bold,underline
  hi TabLine term=bold,underline
  hi TabLineFill term=NONE
  hi Terminal term=NONE
  hi TabLineSel term=bold,reverse
  hi Title term=NONE
  hi VertSplit term=NONE
  hi Visual term=reverse
  hi VisualNOS term=NONE
  hi WarningMsg term=standout
  hi WildMenu term=bold
  hi CursorIM term=NONE
  hi ToolbarLine term=reverse
  hi ToolbarButton term=bold,reverse
  hi CurSearch term=reverse
  hi CursorLineFold term=underline
  hi CursorLineSign term=underline
  hi Comment term=bold
  hi Constant term=NONE
  hi Error term=bold,reverse
  hi Identifier term=NONE
  hi Ignore term=NONE
  hi PreProc term=NONE
  hi Special term=NONE
  hi Statement term=NONE
  hi Todo term=bold,reverse
  hi Type term=NONE
  hi Underlined term=underline
  unlet s:t_Co
  finish
endif

" Background: dark
" Color: color00          #1c1c1c        234            black
" Color: color08          #767676        243            darkgray
" Color: color01          #af5f5f        131            darkred
" Color: color09          #d75f87        168            red
" Color: color02          #5faf5f        71             darkgreen
" Color: color10          #87d787        114            green
" Color: color03          #af875f        137            darkyellow
" Color: color11          #d7af87        180            yellow
" Color: color04          #5f87af        67             darkblue
" Color: color12          #5fafd7        74             blue
" Color: color05          #af87af        139            darkmagenta
" Color: color13          #d787d7        176            magenta
" Color: color06          #5f8787        66             darkcyan
" Color: color14          #87afaf        109            cyan
" Color: color07          #9e9e9e        247            gray
" Color: color15          #bcbcbc        250            white
" Color: colorLine        #303030        236            darkgrey
" Color: colorB           #3a3a3a        237            darkgrey
" Color: colorF           #262626        235            darkgrey
" Color: colorNonT        #585858        240            darkgrey
" Color: colorC           #ffaf5f        215            red
" Color: colorlC          #5fff00        82             green
" Color: colorV           #1f3f5f        109            cyan
" Color: colorMP          #ff00af        199            magenta
" Color: diffAdd          #5faf5f        71             darkgreen
" Color: diffDelete       #af5f5f        131            darkred
" Color: diffChange       #5f87af        67             darkblue
" Color: diffText         #af87af        139            darkmagenta
" Color: black            #000000        16             black
" Color: white            #dadada        253            white
" Color: Added            #5fd75f        77             darkgreen
" Color: Changed          #ffaf5f        215            darkyellow
" Color: Removed          #d75f5f        167            darkred
" Term colors: color00 color01 color02 color03 color04 color05 color06 color07
" Term colors: color08 color09 color10 color11 color12 color13 color14 color15
" vim: et ts=8 sw=2 sts=2
