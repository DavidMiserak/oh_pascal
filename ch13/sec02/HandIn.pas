
Program HandIn(ouput, Source, Answers, Homework);
{concatenates two files.}

Var 
  Source, Answers, Homework : text;

Procedure Copy(Var FromFile, ToFile : text);
 {Copies FromFile to ToFile, one character at a time.}

Var 
  Ch : char;

Begin
  While Not eof(FromFile) Do
    Begin
      If eoln(FromFile) Then
        Begin
          readln(FromFile); {Handle the end-of-line.}
          writeln(ToFile);
        End
      Else
        Begin
          read(FromFile, Ch);
          write(ToFile, Ch);
        End {if}
    End; {while}
End; {Copy}

Begin
  writeln('Copying "source" and "answers" to "homework"...');
  reset(Source);
  reset(Answers);
  rewrite(Homework);
 {Files are open for reading and writing.}
  Copy(Source, Homework);
  writeln(Homework, 'Execution begins...');
  Copy(Answers, Homework);
 {The files have been copied.}
  writeln('All done.');
End. {HandIn}
