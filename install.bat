REM https://chocolatey.org/

REM Acer - Atheros AR5B125 Wireless Network Adapter
REM      - Broadcom NetLink (TM) Gigabit Ethernet

REM sizer
REM chrome-zoomed: 1290 x 725 window
REM meta-zoomed:   1295 x 758
REM st2-zoomed:    1294 x 756

REM sizer - resize windows
REM http://www.brianapps.net/sizer/sizer334.msi
REM windows_automation/apps/sizer334.msi

REM desktop-7huo5h1
REM DESKTOP-9ODBGEN

REM remote shutdown
REM http://mswintips.com/Access%20Is%20Denied.(5)%20On%20Remote%20Shutdown%20Fix.php
REM https://www.groovypost.com/howto/remote-shutdown-restart-windows-10/

REM miniserve - Serve files through HTTP
REM miniserve-win-x86_64.exe -i 192.168.1.103 spasov-penny-stocks
REM https://github.com/svenstaro/miniserve 

REM ZET - Astrology Software
REM http://www.zaytsev.com/downloads.html

REM Astrolog Freeware Software
REM https://www.astrolog.org/astrolog/astfile.htm

REM speed up in browser html5 video
REM document.querySelector('video').playbackRate = 1.75;
REM document.getElementsByTagName('video')[0].volume = 0.2;
REM var elem = document.getElementById("myvideo");
REM elem.requestFullscreen();
REM var elem = document.documentElement;
REM document.exitFullscreen();
REM video timeoffset
REM var video = document.getElementsByTagName("video")[0];
REM video.currentTime = starttimeoffset;
REM javascript:(function(){document.querySelector('video').playbackRate = 1.75;})();

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

REM hdd partition manager
REM https://www.partitionwizard.com/  - MiniTool Partition Wizard Free

REM error: Can't read from the source file or disk
REM https://www.powerdatarecovery.com
REM MiniTool Power Data Recovery free edition


REM PDF-XChange Viewer
REM http://www.tracker-software.com/product/pdf-xchange-viewer
REM http://www.sumatrapdfreader.org/download-free-pdf-viewer.html
REM gswin64c -sDEVICE=txtwrite -o output.txt input.pdf
REM pdftk file.pdf cat 26-34 output file3.pdf

REM MSYS2 is a software distro and building platform for Windows
REM http://www.msys2.org/

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
REM -----------------------------------------------------------
REM http://www.googletagservices.com/video.js
REM Internet Explorer -> Tools (alt+X) -> Internet Options -> Security -> Restricted Sites -> Sites -> Add

REM Sound in cmd
REM powershell -c (New-Object Media.SoundPlayer "C:\Windows\Media\notify.wav").PlaySync();

REM Disable Windows Defender
REM gpedit.msc -> Administrative Templates -> Windows Components -> Windows Defender -> Turn off Windows Defender -> select ENABLED

REM Ruby DevKit
REM http://rubyinstaller.org/downloads/
REM https://github.com/oneclick/rubyinstaller/wiki/Development-Kit

REM find text in files
REM findstr /s "computer help" *.txt

REM Search for files from dos command prompt
REM dir "*text*" /s

REM ShareX
REM Task Settings -> Upload -> File naming -> Name pattern for window capture: %pn_%y-%mo-%d_%h-%mi-%s

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
