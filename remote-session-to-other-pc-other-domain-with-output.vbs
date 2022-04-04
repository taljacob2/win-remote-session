
' Connect to a remote computer that is on other domain:

' Create WSMan Object to manage remote connections to other computers.
Set Wsman = CreateObject("Wsman.Automation")
Set ConnectionOptions = Wsman.CreateConnectionOptions
ConnectionOptions.Username = "MyUserName"
ConnectionOptions.Password = "MyPassword!"
Set NewSession = Wsman.CreateSession("localhost", _
  (WSMan.SessionFlagUseNegotiate Or _
  WSMan.SessionFlagCredUsernamePassword), ConnectionOptions)


' Execute on the created session

strResource = "http://schemas.microsoft.com/wbem/wsman/1/" & _
  "wmi/root/cimv2/Win32_OperatingSystem"

' Http GET
Set objResponse = NewSession.Enumerate(strResource)

While Not objResponse.AtEndOfStream
    DisplayOutput(objResponse.ReadItem) 
Wend