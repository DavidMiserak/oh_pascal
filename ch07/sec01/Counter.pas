
Program Counter(input, output);
{Counts the number of characters and lines in input text.}

Var
  Ch                   : char;
  CharCount, LineCount : integer;

Begin
  CharCount := 0;
  LineCount := 0;
  writeln('Give me a few line of input to count.');
  While Not eof Do
    Begin
      If eoln Then
        Begin
          LineCount := LineCount + 1;
          readln;
        End
      Else
        Begin
          CharCount := CharCount + 1;
          read(Ch);
        End; {if}
    End; {while}
  write(CharCount: 1);
  write(' characters read, ');
  write(LineCount: 1);
  writeln(' lines read.');
End. {Counter}
