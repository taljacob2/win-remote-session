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

### Allow Unencrypted Connection

> Thanks to this [StackOverflow Answer](https://stackoverflow.com/questions/1469791/powershell-v2-remoting-how-do-you-enable-unencrypted-traffic)

```
set-item -force WSMan:\localhost\Client\AllowUnencrypted $true
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

#### Establish HTTPS Connection To Remote Server:

https://www.youtube.com/watch?v=9D3v9iythwM

Run:
<kbd>Win</kbd> + <kbd>R</kbd> to open *run.exe*
and search for:
`certlm.msc`
Then, follow the instructions here:
https://knowledge.digicert.com/solution/SO29005.html
![image](https://user-images.githubusercontent.com/70590583/161558038-127ada39-2d8a-4648-9bbf-b81c9c1ee645.png)

More About Certificates:

https://docs.microsoft.com/en-us/dotnet/framework/wcf/feature-details/how-to-view-certificates-with-the-mmc-snap-in
https://docs.microsoft.com/en-us/dotnet/framework/wcf/feature-details/working-with-certificates
https://docs.microsoft.com/en-us/dotnet/framework/wcf/feature-details/how-to-obtain-a-certificate-wcf

Second Hop With WinRM:

https://4sysops.com/archives/using-credssp-for-second-hop-powershell-remoting/