@echo off
set dllPath=%~1
set solutionDir=%~2
set projectDir=%~3
set arch=%~4
set config=%~5

echo Running pre-build for %config%

where /q GmlCppExtFuncs
if %ERRORLEVEL% EQU 0 (
	echo Running GmlCppExtFuncs...
	GmlCppExtFuncs ^
	--prefix catch_error_mini^
	--cpp "%projectDir%autogen.cpp"^
	--gml "%solutionDir%catch_error_mini_23/extensions/catch_error_mini/autogen.gml"^
	%projectDir%catch_error_mini.cpp
)