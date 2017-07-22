" Vim Syntax File
" Built for Note Taking Markdown
" Created by: Chris Rupper
" Version 0.0.1

" Quit when a syntax file was already loaded.
if exists('b:current_syntax') | finish|  endif

syntax match simpleVar "\k\+" nextgroup=simpleAssignment
syntax match simpleAssignment "=" contained nextgroup=simpleValue
syntax match simpleValue ".*" contained

syn match comment "#.*$"
"syn region randomThought start='\|r' end='.\|'

hi def link simpleVar Identifier
hi def link simpleAssignment Statement
hi def link simpleValue String

hi def link comment Comment
"hi def link randomThought Comment

let b:current_syntax = 'ntmd'
