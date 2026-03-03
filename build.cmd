@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

REM create build dir if not existing
if not exist build mkdir build

set GOOS=windows

REM set an array with needed GOARCH setting & corresponding bitness
set archBitObj[0].goarch=amd64
set archBitObj[0].bit=64
set archBitObj[1].goarch=386
set archBitObj[1].bit=32

REM calling a loop from element 0 with increments 1 until element 1
FOR /L %%i IN (0 1 1) DO (
	set GOARCH=!archBitObj[%%i].goarch!
	set dest=build/ssh2plink_!archBitObj[%%i].bit!bit.exe

	go build -o !dest!
	echo created: !dest!
)
