
Program MakeFile(Results, input, output);
{Echoes program input into a permanent disk file.}

Var 
  Results : text; {The file variable must match the heading.}
  Current : char;

Begin
  writeln('Give me some deathless prose to save.');
  rewrite(Results); {Create an empty output file.}
  While Not eof Do
    Begin {We're using that standard input file.}
      If eoln Then
        Begin
          readln; {Deal with end-of-line.}
          writeln(Results); {write and writeln can get a file name argument.}
        End
      Else
        Begin {Deal with an ordinary character.}
          read(Current);
          write(Results, Current); {If a file name is given, output goes to it.}
        End
    End; {while}
  writeln('All done. File "Results" has been saved for posterity.')
End. {MakeFile}
