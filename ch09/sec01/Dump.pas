Procedure Dump(Data : GridTYPE);
{Imitates a programming environment's 'variables' window.}

Var 
  Row, Column : integer;

Begin
  write('Contents: (');
  For Row := 1 To MAX Do
    Begin
      write('('); {One row's opening paraenthesis.}
      For Column := 1 To MAX Do
        Begin
          write(Data[Row, Column]: 1);
          If (Column < MAX) Then
            Begin
              write(', ')
            End
   {Only print commas between values.}
        End; {Column for}
      write(')'); {One row's closing paraenthesis.}
    End; {Row for}
  If (Row < MAX) Then
    Begin
      write(', ')
    End
 {Only print commas between rows.}
    writeln(')');
End; {Dump}
