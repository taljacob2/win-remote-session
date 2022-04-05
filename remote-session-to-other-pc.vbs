
' Connect to a basic remote computer.

' Create WSMan Object to manage remote connections to other computers.
Set Wsman = CreateObject("Wsman.Automation")
Set ConnectionOptions = Wsman.CreateConnectionOptions
ConnectionOptions.Username = "MyUserName"
ConnectionOptions.Password = "MyPassword"
Set NewSession = Wsman.CreateSession("127.0.51.1", _
  (WSMan.SessionFlagUseBasic Or _
  WSMan.SessionFlagCredUsernamePassword), ConnectionOptions)
