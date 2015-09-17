REM https://chocolatey.org/

REM sizer
REM chrome-zoomed: 1303 x 743
REM meta-zoomed:   1295 x 758
REM st2-zoomed:    1294 x 756

REM sift - grep replacement
REM http://sift-tool.org/
REM go get github.com/svent/sift
REM
REM oracle - source analysis tool that answers questions about Go programs
REM http://golang.org/s/oracle-user-manual
REM go get golang.org/x/tools/cmd/oracle
REM 

:CheckOS
IF EXIST "%PROGRAMFILES(X86)%" (GOTO 64BIT) ELSE (GOTO 32BIT)

:64BIT
echo 64-bit...

choco install redis-64 -y

choco install sharex -y
choco install autohotkey.install -y
choco install ffmpeg -y
choco install irfanview -y

GOTO END

:32BIT
echo 32-bit...

choco install sharex -y
choco install autohotkey.install -y
choco install redis -y
choco install ffmpeg -y
choco install irfanview -y

GOTO END

:END
