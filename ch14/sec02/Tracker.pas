
Program Tracker(input, output);
{Uses sets to find which letters do and don't appear in a text sample.}

Type 
  CharSetTYPE = set Of char;

Var 
  Current                         : char;
  IncludedLetters, MissingLetters : CharSetTYPE;

Begin
  writeln('Type in a line of your wide randing vocabulary.');
 {Initialization}
  IncludedLetters := [];
  MissingLetters := ['A' .. 'Z'];
 {Update}
  While Not eoln Do
    Begin
      read(Current);
      IncludedLetters := IncludedLetters + [Current];
      MissingLetters  := MissingLetters  - [Current];
    End; {while}
 {Inspection}
  writeln('Lower-case letters included were:');
  For Current := 'a' To 'z' Do
    Begin
      If Current In IncludedLetters Then
        Begin
          write(Current);
        End
    End; {for}
  writeln;
 {Inspection}
  write('Upper-case letters not included were:');
  writeln;
  For Current := 'A' To 'Z' Do
    Begin
      If Current In MissingLetters Then
        Begin
          write(Current);
        End
    End; {for}
  writeln;
End. {Tracker}
