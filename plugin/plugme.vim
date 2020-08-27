let s:save_cpo = &cpo
set cpo&vim

scriptencoding utf-8

if &cp || v:version < 802 || (exists('g:loaded_plugme') && g:loaded_plugme)
  finish
endif

let g:loaded_plugme = 1

let g:plugme_conf_var1 =
      \ get( g:, 'plugme_conf_var1', 'Val1' )

let g:plugme_conf_var2 =
      \ get( g:, 'plugme_conf_var2', 'Val2' )



function PlugmeFunc()
  echom 'work done...'
endfunction

function KewlThings()
  echom 'shutdown -h now'
endfunction

nnoremap <Plug>(kewl-things) :<C-u>call KewlThings()<CR>

command! -bar PlugmeCmd  call PlugmeFunc()

