
Program ParamBed(input, output);
{A test bed for parameters.}

Var First, Second, Third : integer;

Procedure CallMe(Var A: integer; {var}
                     B: integer; {val}
                 Var C: integer);{var}
Begin
  A := 4;
  B := 5; {This assignment is local.}
  C := 6;
  writeln(A:8, B:8, C:8);
End; {CallMe}

Begin
  First  := 1;
  Second := 2;
  Third  := 3;
  writeln(First:8, Second:8, Third:8);
  CallMe(First:8, Second:8, Third:8);
  writeln(First:8, Second:8, Third:8);
End. {ParamBed}
