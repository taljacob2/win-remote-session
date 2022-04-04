' View more here:
' https://github.com/MicrosoftDocs/win32/blob/docs/desktop-src/WinRM/obtaining-data-from-a-remote-computer.md


' Create WSMan Object to manage remote connections to other computers.
Set Wsman = CreateObject("Wsman.Automation")

' Create a network-session to control "localhost".
Set Session = Wsman.CreateSession

strResource = "http://schemas.microsoft.com/wbem/wsman/1/" & _
  "wmi/root/cimv2/Win32_OperatingSystem"

' Http GET
Set objResponse = Session.Enumerate(strResource)

While Not objResponse.AtEndOfStream
    DisplayOutput(objResponse.ReadItem) 
Wend


'****************************************************
' Displays WinRM XML message using built-in XSL
'****************************************************
Sub DisplayOutput(strWinRMXml)
    Dim xmlFile, xslFile
    Set xmlFile = CreateObject("MSXml.DOMDocument") 
    Set xslFile = CreateObject("MSXml.DOMDocument")
    xmlFile.LoadXml(strWinRMXml)
    xslFile.Load("WsmTxt.xsl")
    Wscript.Echo xmlFile.TransformNode(xslFile) 
End Sub
