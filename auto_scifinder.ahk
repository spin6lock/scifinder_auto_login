Begin:
run %A_ScriptDir%/sfschlr.exe ;����scifinder
;�ж��Ƿ��¼�ɹ�
winwait,SciFinder Scholar
winwait,SciFinder Scholar License Agreement,,3
winwait,Problem Report,,3
IfWinNotExist, Problem Report ;�����¼�ɹ�
{
    IfWinExist,SciFinder Scholar License Agreement ;double confirm to avoid false alarm
    {
        MsgBox "��¼�ɹ�" ;������ʾ����
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