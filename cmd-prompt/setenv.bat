rem set PATH=C:\BitNami\support-redmine-2.2.3-0/git\cmd;%PATH%
rem set PATH=C:\gtk\bin;C:\msys\1.0\bin;C:\gnumake-3.81;C:\MinGW_gratest\msys\1.0\bin;%PATH%
set PATH=C:\Ruby22\bin;%PATH%
set PATH=C:\Windows\Microsoft.NET\Framework\v4.0.30319;%PATH%
set GOBIN=C:\Users\lanastasov\go/bin

doskey hh=cd C:\dev\lanastasov
doskey r=cd C:\dev\ruby
doskey goh=cd C:\Users\lanastasov\go\src\github.com\lanastasov
doskey subl="C:\Program Files (x86)\Sublime Text 3\sublime_text.exe" $1

doskey chrome="C:\Program Files\Google\Chrome\Application\chrome.exe" $1
doskey chrome="C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" $1

doskey staticrb=ruby -run -ehttpd . -p8000

rem set MAGICK_HOME=C:\BitNami\support-redmine-2.2.3-0\imagemagick
