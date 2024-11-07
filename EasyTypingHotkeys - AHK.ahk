#NoEnv
#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#If
    +!e::
        Send, {U+00E9}
        Return

    $Tab::
        Send, {Tab}
        Return                    

; --- Keysend Hotkeys ---

#If WinActive("ahk_class Notepad") 
    Tab::
        Return

    +Tab::
        Return

    Shift & Enter::
        Send, {Enter}{-}{Space 1}
        Send, ^s
        Return

#If WinActive("ahk_class Notepad") and GetKeyState("Tab", "P")
    Space::
        Send, {Space 2}
        Return

    SCC::
        Send, {-}{Space 1}
        Return

    SC029:: 
        Send, {Space 2}{~}{Space 1}
        Return

    1::
        Send, {Space 4}{!}{Space 1}
        Return

    2::
        Send, {Space 6}{@}{Space 1}
        Return

    3::
        Send, {Space 8}{#}{Space 1}
        Return

    4::
        Send, {Space 10}{$}{Space 1}
        Return

    5::
        Send, {Space 12}{`%}{Space 1}
        Return

    6::
        Send, {Space 14}{>}{Space 1}
        Return

    7::
        Send, {Space 16}{&}{Space 1}
        Return

    8::
        Send, {Space 18}{*}{Space 1}
        Return

; --- Deletion hotkeys ---

#If WinActive("ahk_class Notepad") and GetKeyState("Tab", "P")
    +Space::
        Send, {BackSpace 2}
        Return

    +SCC::
        Send, {BackSpace 2}
        Return

    +SC029::
        Send, {BackSpace 4}
        Return

    +1::
        Send, {BackSpace 6}
        Return

    +2::
        Send, {BackSpace 8}
        Return

    +3::
        Send, {BackSpace 10}
        Return

    +4::
        Send, {BackSpace 12}
        Return

    +5::
        Send, {BackSpace 14}
        Return

    +6::
        Send, {BackSpace 16}
        Return

    +7::
        Send, {BackSpace 18}
        Return

    +8::
        Send, {BackSpace 20}
        Return
