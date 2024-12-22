@ECHO OFF

SET ROOT=%~dp0
SET SERVER_PATH=%ROOT:~,-1%


SET SERVER_EXEC=paper-1.21.3-81.jar


REM SET JAVA=C:\Apps\jdk-21.0.5+11\bin

IF NOT "%JAVA%" == "" (
    SET PATH=%PATH%;%JAVA%
)


IF NOT EXIST "%SERVER_PATH%\enabled" (
    ECHO The server is disabled. Rename the 'disabled' file to 'enabled'."

) ELSE (
    GOTO :START
)


:START
IF EXIST "%SERVER_PATH%\enabled" (
    echo Starting server...
    echo.

    java -jar "%SERVER_PATH%\%SERVER_EXEC" --nogui

    goto :START
)


ECHO.
ECHO Terminado.
ECHO.

PAUSE
