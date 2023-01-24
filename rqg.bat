@echo off
title RQG

:: Author: Haitham Aouati
:: GitHub: https://github.com/haithamaouati

rem Clear the screen
cls

rem Get the number of lines in the file
for /f %%i in ('find /c /v "" ^< quotes.txt') do set lines=%%i

rem Generate a random number between 1 and the number of lines
set /a random_line=%random% %% %lines% + 1

rem Extract the quote at the random line
for /f "delims=" %%i in ('findstr /b /n "^" quotes.txt ^| findstr /r /b /c:"%random_line%:"') do set "quote=%%i"

rem Print the quote
echo %quote%
