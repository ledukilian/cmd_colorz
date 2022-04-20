@echo off
mode con cols=30 lines=6
color 1f
set ver=0.1
title Colorz %ver%
goto generate

:generate
set /a c1=%random%%%16
if %c1%==10 set c1=A
if %c1%==11 set c1=B
if %c1%==12 set c1=C
if %c1%==13 set c1=D
if %c1%==14 set c1=E
if %c1%==15 set c1=F
set /a c2=%random%%%16
if %c2%==10 set c2=A
if %c2%==11 set c2=B
if %c2%==12 set c2=C
if %c2%==13 set c2=D
if %c2%==14 set c2=E
if %c2%==15 set c2=F
goto show

:show
color %c1%%c2%
cls
echo.
echo        ###############
echo           color %c1%%c2%
echo        ###############
echo.
pause > nul
goto generate
