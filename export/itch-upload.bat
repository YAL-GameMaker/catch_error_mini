@echo off
set /p ver="Version?: "
echo Uploading %ver%...
set user=yellowafterlife
set ext=gamemaker-catch_error_mini
cmd /C itchio-butler push catch_error_mini-for-GMS1.gmez %user%/%ext%:gms1 --userversion=%ver%
cmd /C itchio-butler push catch_error_mini-for-GMS2.yymp %user%/%ext%:gms2 --userversion=%ver%
cmd /C itchio-butler push catch_error_mini-for-GMS2.3+.yymps %user%/%ext%:gms2.3 --userversion=%ver%

pause