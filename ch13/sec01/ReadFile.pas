
Program ReadFile(Results, output);
{Echoes the content of an existing file.}

Var 
  Results : text;
  Current : char; {Text files are files of characters.}

Begin
  writeln('About to echo the contents of a file named "Results".');
  reset(Results); {Prepare to read the file.}
  While Not eof(Results) Do
    Begin {eof and eoln take file arguments.}
      If eoln(Results) Then
        Begin {Deal with end-of-line.}
          readln(Results); {Here, readln and read refer to file Results,}
          writeln;         {and not to the standard keyboard input.}
        End
      Else
        Begin
          read(Results, Current);
          write(Current); {write and writeln still refer to}
        End                 {the standard monitor output.}
    End;
  writeln('All done.');
End. {ReadFile}
