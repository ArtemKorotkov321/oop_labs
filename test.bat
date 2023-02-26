@echo off
set program=node app.js

rem Запуск программы без аргумента
%program%
if ERRORLEVEL 1 (echo Test 1 passed) else (echo Test 1 failed exit 1)

rem Запуск программы с несколькими аргументами
%program% 1 3 5
if ERRORLEVEL 1 (echo Test 2 passed) else (echo Test 2 failed exit 1)

rem Запуск программы со строкой-аргументом
%program% string
if ERRORLEVEL 1 (echo Test 3 passed) else (echo Test 3 failed exit 1)

rem Запуск программы с отрицательным числом
%program% -1
if ERRORLEVEL 1 (echo Test 4 passed) else (echo Test 4 failed exit 1)

rem Запуск программы с числом больше допустимого
%program% 1000000000000000000000000000000000000000000000000000000
if ERRORLEVEL 1 (echo Test 5 passed) else (echo Test 5 failed exit 1)

rem Запуск программы с небинарным числом
%program% 23
if ERRORLEVEL 1 (echo Test 6 passed) else (echo Test 6 failed exit 1)

rem Запуск программы с корректным аргументом
%program% 1001
if NOT ERRORLEVEL 0 (echo Test 7 failed) else (echo Test 7 passed)

echo Tests OK
exit 0