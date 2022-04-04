# win-remote-session

Using the "WinRM"(Windows Remote Management) built in *Windows* tool,
to create remote-connections to other *Windows* machines (similar to SSH).

## Installation

"WinRM" should be already installed on *Windows 10* and *Windows Server 2012 R2*.

But if it doesn't, you can open *powershell.exe* and run:
```
Enable-PSRemoting -Force
winrm quickconfig
```

### Test Connection

In *powershell.exe*, run:
```
Test-WSman REMOTE_IP_TO_CONNECT
```

## Guides
https://www.youtube.com/watch?v=HS95229Z0Yw
https://www.youtube.com/watch?v=EmrHQggFW_s

https://docs.microsoft.com/en-us/windows/win32/winrm/authentication-for-remote-connections
https://docs.microsoft.com/en-us/windows/win32/winrm/scripting-in-windows-remote-management
https://docs.microsoft.com/en-us/windows/win32/winrm/obtaining-data-from-a-remote-computer

Session:

https://docs.microsoft.com/en-us/windows/win32/winrm/wsman-createsession
https://docs.microsoft.com/en-us/windows/win32/winrm/session
https://github.com/MicrosoftDocs/win32/blob/docs/desktop-src/WinRM/session.md

Second Hop With WinRM:

https://4sysops.com/archives/using-credssp-for-second-hop-powershell-remoting/