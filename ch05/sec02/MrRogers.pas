
Program MrRogers(input, output);
{determine if an input number can be devided by 2, 3, 5, and/or 6.}

Var 
  TheNumber : integer;

Begin
  write ('How man toy pieces are there, Jim & Rush? ');
  readln(TheNumber);
  write ('Socially accetable cominations are: ');
  If (TheNumber Mod 2) = 0 Then
    Begin
      write (2:2)
    End;
  If (TheNumber Mod 3) = 0 Then
    Begin
      write (3:2)
    End;
  If (TheNumber Mod 5) = 0 Then
    Begin
      write (5:2)
    End;
  If (TheNumber Mod 6) = 0 Then
    Begin
      write (6:2)
    End;
  writeln;
End. {MrRogers}
