# Distorted Audio Fix for AOC monitors
# Tested on: AOC G2460VQ6
# The script will "hybernate" the display, if the problem persists, run the script several times
# Written by Mutu Adi-Marian (aka Xxshark888xX)


# Turns off the display
(Add-Type '[DllImport("user32.dll")]public static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);' -Name a -Pas)::SendMessage(-1,0x0112,0xF170,2)
# Amount of time (in seconds) to wait before the display will be automatically turned ok
Start-Sleep -Seconds 1
# Simulates keyboard space key press to awake the display
(New-Object -com "Wscript.Shell").SendKeys(" ")
