let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Disks/HdInterno/codigos/CalangoDeAsa/AligatorMobile
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 lib/core/errors/failure.dart
badd +15 lib/models/alert.dart
badd +20 lib/models/bill.dart
badd +2 lib/models/person.dart
badd +21 lib/models/task.dart
badd +4 lib/features/domain/entities/alert.dart
badd +8 lib/features/domain/entities/bill.dart
badd +1 lib/features/domain/entities/person.dart
badd +12 lib/features/domain/entities/task.dart
badd +35 test/features/domain/use_cases/create_alert_test.dart
badd +20 lib/features/domain/use_cases/create_alert.dart
badd +6 lib/features/domain/repositories/alert_repository.dart
badd +4 lib/core/use_cases/use_case.dart
badd +5 lib/core/use_cases/success.dart
badd +5 lib/core/use_cases/no_params.dart
badd +2 lib/features/domain/repositories/person_repository.dart
argglobal
%argdel
edit test/features/domain/use_cases/create_alert_test.dart
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 78 + 157) / 315)
exe '2resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 78 + 157) / 315)
exe '3resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 78 + 157) / 315)
exe '4resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 4resize ' . ((&columns * 236 + 157) / 315)
exe 'vert 5resize ' . ((&columns * 78 + 157) / 315)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
19
normal! zo
26
normal! zo
27
normal! zo
25
normal! zo
33
normal! zo
let s:l = 35 - ((24 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 040|
wincmd w
argglobal
if bufexists("lib/features/domain/repositories/alert_repository.dart") | buffer lib/features/domain/repositories/alert_repository.dart | else | edit lib/features/domain/repositories/alert_repository.dart | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
7
normal! zo
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 057|
wincmd w
argglobal
if bufexists("lib/features/domain/entities/alert.dart") | buffer lib/features/domain/entities/alert.dart | else | edit lib/features/domain/entities/alert.dart | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
if bufexists("lib/features/domain/use_cases/create_alert.dart") | buffer lib/features/domain/use_cases/create_alert.dart | else | edit lib/features/domain/use_cases/create_alert.dart | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
18
normal! zo
29
normal! zo
let s:l = 20 - ((19 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 03|
wincmd w
argglobal
if bufexists("lib/features/domain/repositories/person_repository.dart") | buffer lib/features/domain/repositories/person_repository.dart | else | edit lib/features/domain/repositories/person_repository.dart | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
let s:l = 6 - ((5 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
5wincmd w
exe '1resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 1resize ' . ((&columns * 78 + 157) / 315)
exe '2resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 2resize ' . ((&columns * 78 + 157) / 315)
exe '3resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 3resize ' . ((&columns * 78 + 157) / 315)
exe '4resize ' . ((&lines * 29 + 30) / 61)
exe 'vert 4resize ' . ((&columns * 236 + 157) / 315)
exe 'vert 5resize ' . ((&columns * 78 + 157) / 315)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
