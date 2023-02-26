@echo off
set program=node app.js

rem ������ ��������� ��� ���������
%program%
if ERRORLEVEL 1 (echo Test 1 passed) else (echo Test 1 failed exit 1)

rem ������ ��������� � ����������� �����������
%program% 1 3 5
if ERRORLEVEL 1 (echo Test 2 passed) else (echo Test 2 failed exit 1)

rem ������ ��������� �� �������-����������
%program% string
if ERRORLEVEL 1 (echo Test 3 passed) else (echo Test 3 failed exit 1)

rem ������ ��������� � ������������� ������
%program% -1
if ERRORLEVEL 1 (echo Test 4 passed) else (echo Test 4 failed exit 1)

rem ������ ��������� � ������ ������ �����������
%program% 1000000000000000000000000000000000000000000000000000000
if ERRORLEVEL 1 (echo Test 5 passed) else (echo Test 5 failed exit 1)

rem ������ ��������� � ���������� ������
%program% 23
if ERRORLEVEL 1 (echo Test 6 passed) else (echo Test 6 failed exit 1)

rem ������ ��������� � ���������� ����������
%program% 1001
if NOT ERRORLEVEL 0 (echo Test 7 failed) else (echo Test 7 passed)

echo Tests OK
exit 0