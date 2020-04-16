
Program RealLife(InFile, OutFile, output);
{Reads a text file of reals and produces a real file.}

Type 
  RealFileTYPE = file Of real;

Var 
  OutFile : RealFileTYPE;
  InFile  : text;
  Number  : real;

Begin
  write('Translating text (InFile) into reals (OutFile)...');
  reset(InFile);
  rewrite(OutFile);
 {All our ducks are in line, and we're ready to go.}
  While Not eof(InFile) Do
    Begin
      readln(InFile, Number); {We read text...}
      write(OutFile, Number); {...but we write real values.}
    End;
 {Postcondition: we've read InFile and filled OutFile.}
  writeln('All done.');
End. {RealLife}
