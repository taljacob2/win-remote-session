
' Create WSMan Object to manage remote connections to other computers.
Set Wsman = CreateObject("Wsman.Automation")

' Create a blank .xml.
Set xmlFile = CreateObject("MSxml.DOMDocument")

' Create a network-session to control "localhost".
Set Session = Wsman.CreateSession

' Http GET
Response = Session.Get("http://schemas.microsoft.com/wbem/wsman/" _
    & "1/wmi/root/cimv2/Win32_Service?Name=Spooler")

' Load the response to a new .xml file
xmlFile.LoadXml(Response)

' Save the .xml file to a location in the computer.
xmlFile.Save( "C:\Code\win-remote-session\RawOutput.xml")
