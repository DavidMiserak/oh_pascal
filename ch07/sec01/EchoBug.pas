
Program EchoBug(input, output);
{Reads and echoes text input, but mishandles the end-of-line.}

Var 
  Ch : char;
Begin
  writeln('Types in a few lines for me to echo.');
  While Not eof Do
    Begin {eof means end-of-file. It's unpronunceable.}
      read(Ch);          {Read one character.}
      write(Ch);         {Print the character.}
    End; {while}
End. {EchoBug}
