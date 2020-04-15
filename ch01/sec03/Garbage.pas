
Program Garbage(input, output);
{Shows the hazards of uninnitialized variables.}

Var 
  Letter  : char;
  Number  : integer;
  Decimal : real;

Begin
  writeln(Letter);
  writeln(Number);
  writeln(Decimal);
End. {Garbage}
