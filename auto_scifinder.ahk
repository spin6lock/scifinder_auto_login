Begin:
run %A_ScriptDir%/sfschlr.exe ;start scifinder
winwait,SciFinder Scholar
winwait,SciFinder Scholar License Agreement,,3
winwait,Problem Report,,3
IfWinNotExist, Problem Report ;if login to sci
{
    IfWinExist,SciFinder Scholar License Agreement ;double confirm to avoid false alarm
    {
        MsgBox "µÇÂ¼³É¹¦" ;pop a msgbox to indicate success
        exitapp
    }
    else{
        WinWait, Problem Report
        WinClose, Problem Report
        WinWaitClose, SciFinder Scholar
        Goto, Begin
    }
}
Else
{
    WinClose, Problem Report
    WinWaitClose, SciFinder Scholar
    sleep, 1000
    Goto, Begin
}