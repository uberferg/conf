function! AQTHeading()
    let s:line=line(".")
    call setline(s:line, "/******************************************************************************")
    call append(s:line, " *")
    call append(s:line+1, " * \\file " . expand('%:t'))
    call append(s:line+2, " * \\brief ")
    call append(s:line+3, " * \\author Andrew Ferg")
    call append(s:line+4, " *")
    call append(s:line+5, " * Copyright Aqueti " . expand(strftime("%Y")))
    call append(s:line+6, " * Distributed under the Boost Software License, Version 1.0.")
    call append(s:line+7, " * (See accompanying file LICENSE_1_0.txt or copy at")
    call append(s:line+8, " * http://www.boost.org/LICENSE_1_0.txt)")
    call append(s:line+9, " *")
    call append(s:line+10, " *****************************************************************************/")
    unlet s:line
endfunction
map <F4> <Esc>ggO<C-c>mz:execute AQTHeading()<CR>`z3jA


function! DoxyBrief()
    let s:line=line(".")
    call setline(s:line, "/**")
    call append(s:line, " * \\brief ")
    call append(s:line+1, " **/")
    unlet s:line
endfunction

map <F3> <Esc>O<C-c>mz:execute DoxyBrief()<CR>`zjA


function! TestBlock()
    let s:line=line(".")
    call setline(s:line, "///////////////////////////////////////////////////////////////////////////////")
    call append(s:line, "//                                TEST CODE                                  //")
    call append(s:line+1, "///////////////////////////////////////////////////////////////////////////////")
    unlet s:line
endfunction
