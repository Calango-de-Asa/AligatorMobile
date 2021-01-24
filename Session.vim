let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Disks/HdInterno/codigos/CalangoDeAsa/AligatorMobile
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 lib/features/presentation/pages/create_alert_display.dart
badd +1 __Flutter_Output__
badd +3 lib/features/presentation/controllers/create_alert_controller.dart
badd +7 lib/features/presentation/pages/alerts_display.dart
badd +21 lib/dependency_injection.dart
badd +12 lib/features/data/repositories/alert_repository_impl.dart
badd +8 lib/features/data/repositories/person_repository_impl.dart
badd +4 lib/features/presentation/controllers/alerts_display_controller.dart
badd +0 lib/core/router/router.dart
badd +14 lib/features/presentation/pages/splash_display.dart
badd +62 ~/.pub-cache/hosted/pub.dartlang.org/auto_route-1.0.0-beta.7/lib/src/router/controller/routing_controller.dart
badd +21 pubspec.yaml
badd +2 lib/features/presentation/controllers/alerts_state.dart
badd +16 lib/core/move/move.dart
badd +3524 /opt/flutter/packages/flutter/lib/src/widgets/navigator.dart
badd +35 /opt/flutter/packages/flutter/lib/src/material/page.dart
badd +13 /opt/flutter/packages/flutter/lib/src/widgets/pages.dart
badd +1098 /opt/flutter/packages/flutter/lib/src/widgets/routes.dart
badd +13 lib/main.dart
argglobal
%argdel
edit lib/core/move/move.dart
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 1resize ' . ((&columns * 129 + 129) / 258)
exe '2resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 2resize ' . ((&columns * 128 + 129) / 258)
exe '3resize ' . ((&lines * 36 + 37) / 74)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
14
normal! zo
16
normal! zo
25
normal! zo
61
normal! zo
let s:l = 16 - ((13 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 060|
wincmd w
argglobal
enew
file __Flutter_Output__
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
if bufexists("lib/features/presentation/pages/splash_display.dart") | buffer lib/features/presentation/pages/splash_display.dart | else | edit lib/features/presentation/pages/splash_display.dart | endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
11
normal! zo
16
normal! zo
let s:l = 15 - ((14 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 076|
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 1resize ' . ((&columns * 129 + 129) / 258)
exe '2resize ' . ((&lines * 35 + 37) / 74)
exe 'vert 2resize ' . ((&columns * 128 + 129) / 258)
exe '3resize ' . ((&lines * 36 + 37) / 74)
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
