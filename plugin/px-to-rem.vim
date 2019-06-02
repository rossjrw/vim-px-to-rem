"vim rem to px

function! VimPxRemConvertPxToRem(px)
  return substitute(substitute(printf("%frem", a:px/16.0),"\m0*rem","rem",""),"\m\.rem","rem","")
endfunction

function! VimPxRemConvertRemToPx(rem)
  return substitute(substitute(printf("%fpx", 16.0*str2float(a:rem)),"\m0*px","px",""),"\m\.px","px","")
endfunction

" Converts selected px to rem / vice versa.
" - convert_to: 'px' or 'rem'
" - skipconfirmation: If skipconfirmation is set to 1, then the user will not
"   be promted at each change.
" - start_line: The first line to search.
" - end_line: The last line to search
function! VimPxRemConvert(convert_to, skip_confirmation, start_line, end_line)

  " If the skip confirmation value is set to 1, then don't prompt the user at
  " each change.
  if a:skip_confirmation
    let modifiers= "ge"
  else
    let modifiers= "gec"
  endif

  " Self explanitory
  if a:convert_to == "px"
    let search_for = '\(\d*\.\=\d\+\)rem'
    let conversion_function = "VimPxRemConvertRemToPx"
  elseif a:convert_to == "rem"
    let search_for = '\(\d*\.\=\d\+\)px'
    let conversion_function = "VimPxRemConvertPxToRem"
  endif
  
  " Execute the command
  execute a:start_line . "," . a:end_line ."s/". search_for . "/" . '\=' . conversion_function . '(submatch(1))' . "/" . modifiers
endfunction

"Available commands
command! -range -bang Rem call VimPxRemConvert("rem",<bang>0,<line1>,<line2>)
command! -range -bang Px call VimPxRemConvert("px", <bang>0,<line1>,<line2>)
command! -range=% -bang RemAll call VimPxRemConvert("rem",<bang>0,<line1>,<line2>)
command! -range=% -bang PxAll call VimPxRemConvert("px", <bang>0,<line1>,<line2>)
