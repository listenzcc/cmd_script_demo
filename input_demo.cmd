@echo off
:: %1% refers the first argument
:: print %1% if it exists
:: ask if %1% is null

if "%1%"=="" (
    set /p var="Input:"
    ) else (
    set var=%1%)
echo You just inputed: '%var%'
