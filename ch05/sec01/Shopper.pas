
Program Shopper(input, output);
{Provides a guide for shopping in today's increasingly complex world.}

Var 
  Age : integer;

Begin
  write('How old are you? ');
  readln(Age);
  If (Age < 18) Or (Age > 34) Then
    Begin
      writeln('Uh oh ...you''re not in prime consumption years.');
      writeln('Better stay home and watch MTV.');
    End
  Else
    Begin
      writeln('Go shop unitl you drop.');
    End;
  writeln;
End. {Shopper}
