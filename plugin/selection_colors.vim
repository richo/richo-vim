function! s:SetCurrentWindow()
  for i in range(1, tabpagewinnr(tabpagenr(), '$'))
    let l:range = ""
    if i != winnr()
      for j in range(1, winwidth(i))
        let l:range = l:range . j . ","
      endfor
      let l:range = substitute(l:range, ',$', '', '')
    endif
    call setwinvar(i, '&cc', l:range)
  endfor
endfunction

" au WinEnter * call s:SetCurrentWindow()
" au WinEnter * :set cul
" au WinLeave * :set nocul
