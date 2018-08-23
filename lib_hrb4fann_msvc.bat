@echo off

set HRB_DIR=c:\dev\harbour
set FANN_DIR=..\FANN_220
rem set path=c:\Qt\Tools\mingw530_32\bin

rem if not exist lib md lib

call "c:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"
 
cl -I%FANN_DIR%\src\include -I%HRB_DIR%\include -Wall -c source\fann2hrb.c -ofann2hrb.o
lib fann2hrb.obj lib\fanndouble.lib /OUT:libhrb4fann.lib 

copy libhrb4fann.lib lib\libhrb4fann.lib

del fann2hrb.*
del libhrb4fann.*
