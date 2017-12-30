REM All lines started by "REM" are comments.
@REM The starting "@" hides one line command from the command display.
@REM And the "@echo off" command disable the automatic command display.
@echo off
REM The command below allows you to determine the size of the command window.
mode CON:cols=40 lines=20
REM The "cls" command clears the command window.
cls
REM The "echo" command allows you to write messages in the command window.
REM The ">" symbol allows you to redirect the output to a text file.
echo [notfunnyjoke clock] > notfunnyjokeclock.txt
echo.
echo.
echo.    This is the Regressive Counter
echo.           not funny joke
echo.
echo.  [ please: do not use accents, and ]
echo.   [ provide the time in seconds! ]
echo.
echo.
REM The "set" command allows you to work with temporary variables.
set /P _msgintro=Intro: 
set /P _msgfinal=Final: 
set /P _clocktmp=Clock: 
set _hh=00
set _mm=00
set _ss=00
set _tt=00
REM The "prompt" command allows you to modify the header displayed by cmd.
REM It was used only in development stage.
REM prompt $CP$F$S
REM @echo on
REM Blank lines are valid and help to organize the code.

REM The ":" symbol at the beginning of the line allows you to create labels.
:piadatimermainloop
@cls
@REM Simple Conversion Calculations.
@set /a "_tt=_clocktmp"
@set /a "_hh=_tt/3600"
@set /a "_tt=_tt-(_hh*3600)"
@set /a "_mm=_tt/60"
@set /a "_tt=_tt-(_mm*60)"
@set /a "_ss=_tt"
@REM Time Formatting.
@set "_hh=0%_hh%"
@set "_mm=0%_mm%"
@set "_ss=0%_ss%"
@REM Excerpts initiated by "::" are an undocumented form of comment.
::@echo (P) %_msgintro% %_clocktmp%s
@echo (P) %_msgintro% %_hh:~-2%:%_mm:~-2%:%_ss:~-2%
@echo.%_msgintro% %_hh:~-2%:%_mm:~-2%:%_ss:~-2% > notfunnyjokeclock.txt
@REM Ping for invalid address and double redirected output is one of
@REM the most economical methods of batch processing for the time count.
@ping 0.0.0.0 -n 2 > nul 2>&1
@REM Comparison test between the time counter and the number 1.
@REM If the timer is less than 1, then the script will skip to
@REM the label ":gracequit" to be finalized.
@IF [%_clocktmp%] LSS [1] GOTO :gracequit
@set /a "_clocktmp=_clocktmp-1"
@GOTO :piadatimermainloop

:gracequit
@cls
@echo.%_msgfinal% > notfunnyjokeclock.txt
@echo.(P) %_msgfinal%
@ping 0.0.0.0 -n 2 > nul 2>&1
REM The "exit /b" command allows the script to close without requiring
REM to close the command prompt window that called it.
REM This command is very useful during the testing and development phase
REM of .bat/.cmd scripts.
@exit /b
@REM
@REM This script is free for use, study, modification, sell and sharing.
@REM There is no impediment to both free distribution and
@REM for commercial distribution of the same. Everyone is free to sell it
@REM as well as to donate it. Make good use and be happy!
@REM
@REM This script generates a text file "notfunnyjokeclock.txt" which should
@REM be configured in OBS in "Sources", "Text (GDI +)", "Read from file",
@REM "Browse". Run the script and then select the file, font, color,
@REM and other options. There is no installation of any kind and, in
@REM the moment, accents are NOT accepted.
@REM
@REM This script will display the initial message + a timer in the
@REM format hh:mm:ss until the counter reaches the value 0. Then, it
@REM will display the final message and close.
@REM
@REM This script was inspired by the behavior displayed in the video of 
@REM "ale xand" on 2014-06-14:
@REM           https://www.youtube.com/watch?v=3tnCT-UuBwE
@REM However, this script do not share any code with the work of "ale xand".
@REM
@REM          notfunnyjoke.cmd version 1.0 2017-12-20
@REM
REM List of Useful Scripting Addresses:
REM https://ss64.com/nt/
REM https://ss64.com/nt/syntax.html
REM https://ss64.com/nt/prompt.html
REM https://ss64.com/nt/set.html
REM https://ss64.com/nt/if.html
REM https://ss64.com/nt/syntax-macros.html
REM https://ss64.com/nt/syntax-loops.html
REM https://ss64.com/nt/mode.html
REM Commands to display the active code page:
REM     MODE CON CP /STATUS
REM     chcp