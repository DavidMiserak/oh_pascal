
Program Conflict(input, output);
{A shore example of precedence.}

Var 
  Name : char;

Procedure Boring;
 {This procedure reuses the identifier Name.}

Var 
  Name : char;

Begin
  Name := 'B';   {Until now, the local Name is undefined.}
  writeln(Name); {This prints the procedure's version of Name.}
End; {Boring}

Begin
  Name := 'A'; {Initialize the main program variable.}
  writeln(Name);
  Boring;
  writeln(Name);
End. {Conflict}
