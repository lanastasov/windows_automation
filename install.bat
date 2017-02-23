REM https://chocolatey.org/

REM sizer
REM chrome-zoomed: 1290 x 725 window
REM meta-zoomed:   1295 x 758
REM st2-zoomed:    1294 x 756

REM sizer - resize windows
REM http://www.brianapps.net/sizer/sizer334.msi
REM windows_automation/apps/sizer334.msi

REM flv
REM go get github.com/lanastasov/flv

REM sift - grep replacement
REM http://sift-tool.org/
REM go get github.com/svent/sift

REM oracle - source analysis tool that answers questions about Go programs
REM http://golang.org/s/oracle-user-manual
REM go get golang.org/x/tools/cmd/oracle

REM setx Path "%Path%;%USERPROFILE%\bin\;"
REM WARNING: The data being saved is truncated to 1024 characters.

REM rundll32 url.dll,FileProtocolHandler http://localhost:8080
REM exec.Command("rundll32", "url.dll,FileProtocolHandler", url).Start()
REM open web address from command prompt 

REM epub reader 
REM http://www.epubread.com/app/reader.html

REM PDF-XChange Viewer
REM http://www.tracker-software.com/product/pdf-xchange-viewer
REM http://www.sumatrapdfreader.org/download-free-pdf-viewer.html
REM gswin64c -sDEVICE=txtwrite -o output.txt input.pdf
REM pdftk file.pdf cat 26-34 output file3.pdf

REM E:\programs\nircmd-x64\nircmd.exe cmdwait 1000 monitor off
REM CTRL+ALT+F12

REM E:\programs\nircmd-x64\nircmd.exe mutesysvolume 2
REM CTRL+ALT+M 

REM ZIP
REM http://www.jzip.com/

REM CD/DVD Burner
REM http://www.imgburn.com/index.php?act=download&

REM KMPlayer
REM GLOBAL HOTKEYS
REM F2(PREFERENCES) -> General -> Keys/Global Control -> Global

REM Sound in cmd
REM powershell -c (New-Object Media.SoundPlayer "C:\Windows\Media\notify.wav").PlaySync();

REM Disable Windows Defender
REM gpedit.msc -> Administrative Templates -> Windows Components -> Windows Defender -> Turn off Windows Defender -> select ENABLED

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
