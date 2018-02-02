Setlocal EnableDelayedExpansion
@echo off
set /A i=1
for %%f in (*.cmd) do (
	@echo !i!
	@echo %%f
	@set /A i+=1 
)
set /p num=Select num:
set /A i=1
for %%f in (*.cmd) do (
	if !i! EQU !num! schtasks /create /SC minute /mo 5 /TN mytask /TR "C:\users\уля\оси\%%f
	@set /A i+=1 
)