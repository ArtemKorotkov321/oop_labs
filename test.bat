@echo off
set program=node app.js

rem Запуск без аргументов
%program% 
if ERRORLEVEL 1 (echo Test 1 passed. Incorrect number of arguments) else (echo Arguments test fail exit 1) 

rem Текстовый файл не существует
%program% tests/432.txt pass
if ERRORLEVEL 1 (echo Test 2 passed. File not found) else (echo FileExist test fail exit 1)

rem Текстовый файл пустой
%program% tests/empty.txt 1
if ERRORLEVEL 1 (echo Test 3 passed. File is empty) else (echo EmptyFile test fail exit 1)

rem Запуск с правильными параметрами
%program% tests/test.txt dog
if NOT ERRORLEVEL 0 (echo Test 4 fail. Text not found exit 1) else (echo Test 4 passed. Text found)

exit 0


