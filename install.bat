REM https://chocolatey.org/

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
echo 64-bit...

choco install redis-64 -y

GOTO END

:32BIT
echo 32-bit...

choco install sharex -y
choco install autohotkey.install -y
choco install redis -y 

GOTO END

:END
