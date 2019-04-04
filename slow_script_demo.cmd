@echo off
echo %time%
echo %0% starts
set div=---------------------------
echo.

:: stage 1, wait until userinput
echo stage 1:, press anything to continue
set begin=%time%
pause
echo %begin% ----^> %time%
echo %div%
echo.

:: stage 2, wait for min(%lat%, 10) seconds
:: %lat% may be the first argument if exists
:: if not or illegal, %lat% should be 2 seconds
if "%1%"=="" (
    set lat=2
    ) else (
    set lat=%1%)
if %lat% gtr 10 (set lat=2)
if %lat% lss 0 (set lat=2)

echo stage 2:, wait %lat% sec to continue
set begin=%time%
sleep %lat%
echo %begin% ----^> %time%
echo %div%
echo.

echo %0% ends
echo %time%
