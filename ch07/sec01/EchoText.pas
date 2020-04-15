
Program EchoText(input, output);
{Reads an echoes text input while preserving line structure.}

Var 
  Ch : char;

Begin
  writeln('Type in a few lines for me to echo.');
  While Not eof Do
    Begin
      If eoln Then
        Begin {Deal with the end-of-line}
          readln;        {Dump the remainder of the line.}
          writeln;       {Print a carriage return.}
        End
      Else
        Begin     {Deal with an ordinary character.}
          read(Ch);
          write(Ch);
        End; {if}
    End; {while}
End. {EchoText}
