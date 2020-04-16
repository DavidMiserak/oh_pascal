
Program Groucho(input, output);
{Spots values in a set of 'secret' letters.}

Type 
  Letterset = set Of char;

Var 
  Secret : Letterset;
  Ch     : char;

Begin
 {Begin by initializing the Secret set variable.}
  Secret := ['g', 'r', 'o', 'u', 'c', 'h'{, 'o'}];
 {Then' try to prompt some input.}
  writeln('Try to guess the secret letters. Start typing.');
  While Not eoln Do
    Begin
      read(Ch);
      If Ch In Secret Then
        Begin
          write('Beep!! ');
        End
    End; {while}
  writeln;
End. {Groucho}
