﻿; Created by Asger Juul Brunshøj

; Note: Save with encoding UTF-8 with BOM if possible.
; I had issues with special characters like in ¯\_(ツ)_/¯ that wouldn't work otherwise.
; Notepad will save UTF-8 files with BOM automatically (even though it does not say so).
; Some editors however save without BOM, and then special characters look messed up in the AHK GUI.

; Write your own AHK commands in this file to be recognized by the GUI. Take inspiration from the samples provided here.

;-------------------------------------------------------------------------------
;;; SEARCH GOOGLE ;;;
;-------------------------------------------------------------------------------
if Pedersen = g%A_Space% ; Search Google
{
    gui_search_title = Google
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = a%A_Space% ; Search Google for AutoHotkey related stuff
{
    gui_search_title = Autohotkey Google Search
    gui_search("https://www.google.com/search?num=50&safe=off&site=&source=hp&q=autohotkey%20REPLACEME&btnG=Search&oq=&gs_l=")
}
else if Pedersen = l%A_Space% ; Search Google with ImFeelingLucky
{
    gui_search_title = I'm Feeling Lucky
    gui_search("http://www.google.com/search?q=REPLACEME&btnI=Im+Feeling+Lucky")
}
else if Pedersen = m%A_Space% ; Open more than one URL
{
    gui_search_title = multiple
    gui_search("https://www.google.com/search?&q=REPLACEME")
    gui_search("https://www.bing.com/search?q=REPLACEME")
    gui_search("https://duckduckgo.com/?q=REPLACEME")
}
else if Pedersen = x%A_Space% ; Search Google as Incognito
;   A note on how this works:
;   The function name "gui_search()" is poorly chosen.
;   What you actually specify as the parameter value is a command to run. It does not have to be a URL.
;   Before the command is run, the word REPLACEME is replaced by your input.
;   It does not have to be a search url, that was just the application I had in mind when I originally wrote it.
;   So what this does is that it runs chrome with the arguments "-incognito" and the google search URL where REPLACEME in the URL has been replaced by your input.
{
    gui_search_title = Google Search as Incognito
    gui_search("C:\Program Files (x86)\Google\Chrome\Application\chrome.exe -incognito https://www.google.com/search?safe=off&q=REPLACEME")
}


;-------------------------------------------------------------------------------
;;; SEARCH OTHER THINGS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = f%A_Space% ; Search Facebook
{
    gui_search_title = Search Facebook
    gui_search("https://www.facebook.com/search/results.php?q=REPLACEME")
}
else if Pedersen = y%A_Space% ; Search Youtube
{
    gui_search_title = Search Youtube
    gui_search("https://www.youtube.com/results?search_query=REPLACEME")
}
else if Pedersen = t%A_Space% ; Search torrent networks
{
    gui_search_title = Sharing is caring
    gui_search("https://kickass.to/usearch/REPLACEME")
}
else if Pedersen = spa ; Translate English to spanish
{
    gui_search_title = English to Spanish
    gui_search("https://translate.google.com/#en/es/REPLACEME")
}
else if Pedersen = eng ; Translate English to spanish
{
    gui_search_title = Spanish to English
    gui_search("https://translate.google.com/#es/en/REPLACEME")
}


;-------------------------------------------------------------------------------
;;; LAUNCH WEBSITES AND PROGRAMS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = / ; Go to subreddit. This is a quick way to navigate to a specific URL.
{
    gui_search_title := "/r/"
    gui_search("https://www.reddit.com/r/REPLACEME")
}
else if Pedersen = face ; facebook.com
{
    gui_destroy()
    run www.facebook.com
}
else if Pedersen = red ; reddit.com
{
    gui_destroy()
    run www.reddit.com
}
else if Pedersen = cal ; Google Calendar
{
    gui_destroy()
    run https://www.google.com/calendar
}
else if Pedersen = note ; Notepad
{
    gui_destroy()
    Run Notepad
}
else if Pedersen = paint ; MS Paint
{
    gui_destroy()
    run "C:\Windows\system32\mspaint.exe"
}
else if Pedersen = maps ; Google Maps focused on the Technical University of Denmark, DTU
{
    gui_destroy()
    run "https://www.google.com/maps/@55.7833964`,12.5244754`,12z"
}
else if Pedersen = inbox ; Open google inbox
{
    gui_destroy()
    run https://inbox.google.com/u/0/
    ; run https://mail.google.com/mail/u/0/#inbox  ; Maybe you prefer the old gmail
}
else if Pedersen = mes ; Opens Facebook unread messages
{
    gui_destroy()
    run https://www.facebook.com/messages?filter=unread&action=recent-messages
}
else if Pedersen = url ; Open an URL from the clipboard (naive - will try to run whatever is in the clipboard)
{
    gui_destroy()
    run %ClipBoard%
}
else if Pedersen = gitucr ; 
{
    gui_destroy()
    Run, https://git.ucr.ac.cr/
}
else if Pedersen = git ; 
{
    gui_destroy()
    Run, https://github.com/dorianprogrammer?tab=repositories
}
else if Pedersen = wo ; 
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Word.lnk
}
else if Pedersen = po ; 
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PowerPoint.lnk
}
else if Pedersen = ex ; 
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel.lnk
}
else if Pedersen = one ; 
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OneNote.lnk
}
else if Pedersen = cc ; 
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\CCleaner\CCleaner.lnk
}
else if Pedersen = pu ; 
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PuTTY (64-bit)\PuTTY.lnk
}
else if Pedersen = javad ; 
{
    gui_destroy()
    Run, C:\Users\Dorian\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Eclipse\Eclipse IDE for Java Developers - 2020-12.lnk
}
else if Pedersen = javae ; 
{
    gui_destroy()
    Run, C:\Users\Dorian\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Eclipse\Eclipse IDE for Enterprise Java Developers - 2020-12.lnk
}
else if Pedersen = med ; 
{
    gui_destroy()
    Run, https://mv1.mediacionvirtual.ucr.ac.cr/login/index.php
}


;-------------------------------------------------------------------------------
;;; INTERACT WITH THIS AHK SCRIPT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = rel ; Reload this script
{
    gui_destroy() ; removes the GUI even when the reload fails
    Reload
}
else if Pedersen = dir ; Open the directory for this script
{
    gui_destroy()
    Run, %A_ScriptDir%
}
else if Pedersen = host ; Edit host script
{
    gui_destroy()
    run, notepad.exe "%A_ScriptFullPath%"
}
else if Pedersen = user ; Edit GUI user commands
{
    gui_destroy()
    run, notepad.exe "%A_ScriptDir%\GUI\UserCommands.ahk"
}


;-------------------------------------------------------------------------------
;;; TYPE RAW TEXT ;;;
;-------------------------------------------------------------------------------
else if Pedersen = @ ; Email address
{
    gui_destroy()
    Send, my_email_address@gmail.com
}
else if Pedersen = name ; My name
{
    gui_destroy()
    Send, My Full Name
}
else if Pedersen = phone ; My phone number
{
    gui_destroy()
    SendRaw, +45-12345678
}
else if Pedersen = int ; LaTeX integral
{
    gui_destroy()
    SendRaw, \int_0^1  \; \mathrm{d}x\,
}
else if Pedersen = logo ; ¯\_(ツ)_/¯
{
    gui_destroy()
    Send ¯\_(ツ)_/¯
}
else if Pedersen = clip ; Paste clipboard content without formatting
{
    gui_destroy()
    SendRaw, %ClipBoard%
}


;-------------------------------------------------------------------------------
;;; OPEN FOLDERS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = down ; Downloads
{
    gui_destroy()
    run C:\Users\%A_Username%\Downloads
}
else if Pedersen = drop ; Dropbox folder (works when it is in the default directory)
{
    gui_destroy()
    run, C:\Users\%A_Username%\Dropbox\
}
else if Pedersen = rec ; Recycle Bin
{
    gui_destroy()
    Run ::{645FF040-5081-101B-9F08-00AA002F954E}
}
else if Pedersen = ucr ; open file from ucr
{
    gui_destroy()
    Run, C:\Users\Dorian\OneDrive\Semestre I 2021\
}
else if Pedersen = main ; open where this main files are
{
    gui_destroy()
    Run, F:\Scriptshortcuts\Public-AutoHotKey-Scripts\
}
else if Pedersen = lf ; open an hard drive
{
    gui_destroy()
    Run, F:\
}
else if Pedersen = vb ; open my visual studio
{
    gui_destroy()
    Run, F:\Virtual Box\VirtualBox.exe
}
else if Pedersen = rs ; open my R studio
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\RStudio\RStudio.lnk
}
else if Pedersen = spo ; open where this main files are
{
    gui_destroy()
    Run, C:\Users\Dorian\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk
}
else if Pedersen = mysql ; open where this main files are
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\MySQL\MySQL Workbench 8.0 CE.lnk
}
else if Pedersen = sql ; open where this main files are
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft SQL Server Tools 18\Microsoft SQL Server Management Studio 18.lnk
}
else if Pedersen = code ; open where this main files are
{
    gui_destroy()
    Run, C:\Users\Dorian\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Visual Studio Code\Visual Studio Code.lnk
}

else if Pedersen = vs ; open where this main files are
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Visual Studio 2019.lnk
}
else if Pedersen = zo ; open where this main files are
{
    gui_destroy()
    Run, C:\Users\Dorian\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Zoom\Zoom.lnk
}
else if Pedersen = pg ; open where this main files are
{
    gui_destroy()
    Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\PostgreSQL 13\pgAdmin 4.lnk
}
else if Pedersen = book ; open where this main files are
{
    gui_destroy()
    Run, C:\Users\Dorian\Documents\Programming Books
}

;-------------------------------------------------------------------------------
;;; MISCELLANEOUS ;;;
;-------------------------------------------------------------------------------
else if Pedersen = ping ; Ping Google
{
    gui_destroy()
    Run, cmd /K "ping www.google.com"
}
else if Pedersen = hosts ; Open hosts file in Notepad
{
    gui_destroy()
    Run notepad.exe C:\Windows\System32\drivers\etc\hosts
}
else if Pedersen = date ; What is the date?
{
    gui_destroy()
    FormatTime, date,, LongDate
    MsgBox %date%
    date =
}
else if Pedersen = week ; Which week is it?
{
    gui_destroy()
    FormatTime, weeknumber,, YWeek
    StringTrimLeft, weeknumbertrimmed, weeknumber, 4
    if (weeknumbertrimmed = 53)
        weeknumbertrimmed := 1
    MsgBox It is currently week %weeknumbertrimmed%
    weeknumber =
    weeknumbertrimmed =
}
else if Pedersen = ? ; Tooltip with list of commands
{
    GuiControl,, Pedersen, ; Clear the input box
    Gosub, gui_commandlibrary
}
