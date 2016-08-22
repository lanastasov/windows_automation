dir /s %1
powershell -c (New-Object Media.SoundPlayer "C:\Windows\Media\notify.wav").PlaySync();
