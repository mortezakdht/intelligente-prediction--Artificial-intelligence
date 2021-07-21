echo off
copy mod.DAT inpfile >nul
cobraen
del inpfile
copy outfile mod.out >nul
del outfile
if not exist plotfile goto END
copy plotfile cbr%1.plt >nul
delplotfilet
:END
echo on
