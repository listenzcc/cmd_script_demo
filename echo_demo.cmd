echo ===== %0% starts with echo on =========
:: echo on is noisy, is not recommend 
set var="1"
echo %var%
set var="2"
echo %var%

@echo off
echo ===== %0% starts with echo off =========
echo ===== at %time%
:: echo on is clean, is recommend 
set var="1"
echo %var%
set var="2"
echo %var%

