" Vim syntax file
" Language: Nederlang
" Maintainer: Kairos 
" Last Revision: 2026 Nov 3

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword     nlType              geheel
syn keyword     nlStatement         geefterug gezelligheid
syn keyword     nlConditioneel      als dan anders
syn keyword     nlHerhalen          zolang
syn keyword     nlBoolean           waar vals
syn keyword     nlTedoen            tedoen

" Literals 
" syn match       nlNummer            '\<\d\+\>'
" syn match       nlIdentifier        '\<[A-Za-z_][A-Za-z0-9_]*\>'

" Strings and #{identifier} interpretation
syn match       nlInterpolatie      '#{[A-Za-z_][A-Za-z0-9_]*}' contained
syn region      nlTekenreeks        start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=nlInterpolatie

" Functies
syn match       nlFunctieNaam       /\<\h\w*\>\ze\s*(/

" Operators and whatever
syn match       nlOperator          '=='
syn match       nlOperator          '!='
syn match       nlOperator          '+='
syn match       nlOperator          '-='
syn match       nlOperator          '||'
syn match       nlOperator          '&&'
syn match       nlOperator          '++'
syn match       nlOperator          '--'
syn match       nlOperator          '[<>=|&^%+*/-]'
syn match       nlPunctuation       '[(){};,#]'


hi def link     nlType              Type
hi def link     nlStatement         Statement
hi def link     nlConditioneel      Conditional
hi def link     nlHerhalen          Repeat
hi def link     nlBoolean           Boolean
hi def link     nlTedoen            Todo
" hi def link     nlNummer            Number
" hi def link     nlIdentifier        Identifier
hi def link     nlTekenreeks        String
hi def link     nlFunctieNaam       Function
hi def link     nlInterpolatie      Special
hi def link     nlOperator          Operator
hi def link     nlPunctuation       Delimiter


let b:current_syntax = "nederlang"
