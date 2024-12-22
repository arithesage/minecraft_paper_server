@ECHO OFF

SET ROOT=%~dp0
SET SERVER_PATH=%ROOT:~,-1%


SET SERVER_EXEC=paper-1.21.3-81.jar


REM SET JAVA=C:\Apps\jdk-21.0.5+11\bin

IF NOT "%JAVA%" == "" (
    SET PATH=%PATH%;%JAVA%
)


ECHO Starting server...
ECHO.

java -jar "%SERVER_PATH%\%SERVER_EXEC%" --nogui


ECHO.
ECHO Finished.
ECHO.

PAUSE
