@echo off

if not exist "catch_error_mini-for-GMS1" mkdir "catch_error_mini-for-GMS1"
cmd /C copyre ..\catch_error_mini.gmx\extensions\catch_error_mini.extension.gmx catch_error_mini-for-GMS1\catch_error_mini.extension.gmx
cmd /C copyre ..\catch_error_mini.gmx\extensions\catch_error_mini catch_error_mini-for-GMS1\catch_error_mini
cmd /C copyre ..\catch_error_mini.gmx\datafiles\catch_error_mini.html catch_error_mini-for-GMS1\catch_error_mini\Assets\datafiles\catch_error_mini.html
cd catch_error_mini-for-GMS1
cmd /C 7z a catch_error_mini-for-GMS1.7z *
move /Y catch_error_mini-for-GMS1.7z ../catch_error_mini-for-GMS1.gmez
cd ..

if not exist "catch_error_mini-for-GMS2\extensions" mkdir "catch_error_mini-for-GMS2\extensions"
if not exist "catch_error_mini-for-GMS2\datafiles" mkdir "catch_error_mini-for-GMS2\datafiles"
if not exist "catch_error_mini-for-GMS2\datafiles_yy" mkdir "catch_error_mini-for-GMS2\datafiles_yy"
cmd /C copyre ..\catch_error_mini_yy\extensions\catch_error_mini catch_error_mini-for-GMS2\extensions\catch_error_mini
cmd /C copyre ..\catch_error_mini_yy\datafiles\catch_error_mini.html catch_error_mini-for-GMS2\datafiles\catch_error_mini.html
cmd /C copyre ..\catch_error_mini_yy\datafiles_yy\catch_error_mini.html.yy catch_error_mini-for-GMS2\datafiles_yy\catch_error_mini.html.yy
cd catch_error_mini-for-GMS2
cmd /C 7z a catch_error_mini-for-GMS2.zip *
move /Y catch_error_mini-for-GMS2.zip ../catch_error_mini-for-GMS2.yymp
cd ..

if not exist "catch_error_mini-for-GMS2.3+\extensions" mkdir "catch_error_mini-for-GMS2.3+\extensions"
if not exist "catch_error_mini-for-GMS2.3+\datafiles" mkdir "catch_error_mini-for-GMS2.3+\datafiles"
cmd /C copyre ..\catch_error_mini_23\extensions\catch_error_mini catch_error_mini-for-GMS2.3+\extensions\catch_error_mini
cmd /C copyre ..\catch_error_mini_23\datafiles\catch_error_mini.html catch_error_mini-for-GMS2.3+\datafiles\catch_error_mini.html
cd catch_error_mini-for-GMS2.3+
cmd /C 7z a catch_error_mini-for-GMS2.3+.zip *
move /Y catch_error_mini-for-GMS2.3+.zip ../catch_error_mini-for-GMS2.3+.yymps
cd ..

pause