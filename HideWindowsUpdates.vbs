'// Inspired by Opmet and Colin Bowern: http://serverfault.com/a/341318
If Wscript.Arguments.Count < 1 Then
    WScript.Stdout.WriteLine "Syntax: HideWindowsUpdates.vbs [Hotfix Article ID] ..." & vbCRLF _
        & "Example:" & vbCRLF _
        & "  HideWindowsUpdates.vbs 3022345 3035583"
    WScript.Quit
End If

Dim objArgs
Set objArgs = Wscript.Arguments
Dim updateSession, updateSearcher
Set updateSession = CreateObject("Microsoft.Update.Session")
Set updateSearcher = updateSession.CreateUpdateSearcher()

Wscript.Stdout.Write "Searching for pending updates..."
Dim searchResult
Set searchResult = updateSearcher.Search("IsInstalled=0 and IsHidden=0")

WScript.Stdout.WriteLine " " & CStr(searchResult.Updates.Count) & " found."
Dim update, kbArticleId, hotfixId
For Each update in searchResult.Updates
    For Each kbArticleId in update.KBArticleIDs
        For Each hotfixId in objArgs
            If kbArticleId = hotfixId Then
                WScript.Echo "Hiding update: " & update.Title
                update.IsHidden = True
                ' We're done, no need to loop further.
                Exit For
            End If
        Next
        If update.IsHidden Then
            ' We're done, no need to loop further.
            Exit For
        End If
    Next
Next
'// EOF
