
Program ShowTime(input, output);
{Prints a multiplication table of Limit values.}

Var 
  Limit : integer;

Procedure LabelTable (Limit : integer);
{Draw the top two lines that lable the table.}

Var 
  Column : integer;

Begin
  write ('    '); {Leading spaces at the top.}
  For Column := 1 To Limit Do
    Begin
      write(Column: 1);
      write('| '); {Print the bar and space.}
    End;
  writeln;
 {The columns have been labeled.}
  write('---'); { Leading dashed on the second line.}
  For Column := 1 To Limit Do
    Begin
      write('---');
    End;
  writeln;
 {The dashed line is done.}
End; {LabelTable}

Procedure DrawTable (Limit : integer);
{Print the times table.}

Var 
  Row, Column : integer;

Begin
  For Row := 1 To Limit Do
    Begin
      write(Row: 1); {Label every row}
      write('| ');
  {Going to Limit instead of Row would print duplicates.}
      For Column := 1 To Row Do
        Begin
          write(Row*Column: 3);
        End; {the inner for loop}
      writeln;
  {Each row has been printed.}
    End; {the outer for loop}
End; {DrawTable}

Begin
  write('Enter the upper limit for this times table: ');
  readln(Limit);
 {Limit has been initialized.}
  LabelTable(Limit);
 {The cart is labeled.}
  DrawTable(Limit);
 {The chart is done.}
End. {ShowTime}
