Begin:
run %A_ScriptDir%/sfschlr.exe ;启动scifinder
;判断是否登录成功
winwait,SciFinder Scholar
winwait,SciFinder Scholar License Agreement,,3
winwait,Problem Report,,3
IfWinNotExist, Problem Report ;如果登录成功
{
    IfWinExist,SciFinder Scholar License Agreement ;double confirm to avoid false alarm
    {
        MsgBox "登录成功" ;弹出提示窗口
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