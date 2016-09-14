'Function that writes the rst table according to used cells in the current worksheet
'Write your table in Excel and run the macro to generate a txt file with the rst table
'Thibaut Dupre 201608022
Sub Write_RST_table()

Dim rst As String
Dim rCell As Range
Dim rRng As Range

Dim outputFilePath, outputFile, outputFilename As String
outputFilename = "rst_table.txt"
outputFilePath = Application.ActiveWorkbook.Path
outputFile = FreeFile
Open outputFilename For Output As #outputFile

Dim nbCol As Integer
Dim colCnt As Integer

colCnt = 1

rst = ".. list-table::" & vbCrLf & "   :header-rows: 1" & vbCrLf & vbCrLf

    Set rRng = Application.ActiveSheet.UsedRange
    nbCol = rRng.Columns.Count

    For Each rCell In rRng.Cells
        'Debug.Print rCell.Address, rCell.Value
        
        Select Case colCnt
        Case 1
                rst = rst & "   * * " & rCell.Value & vbCrLf
                colCnt = colCnt + 1
                
         Case 2 To nbCol
                rst = rst & "     * " & rCell.Value & vbCrLf
                colCnt = colCnt + 1
                If colCnt > nbCol Then colCnt = 1
        
        End Select
     Next rCell

Print #outputFile, rst
Close #outputFile

End Sub
