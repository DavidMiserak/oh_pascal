
Program Confound(input, output);
{Comments? Nope -- that would be telling}

Var 
  A, B, C, D : integer;

Procedure Confuse(C, A : integer; Var B : integer);

Var 
  D : integer;
Begin
  A := 5;
  B := 6;
  C := 7;
  D := 8;
  write(A:10);
  write(B:10);
  write(C:10);
  write(D:10);
End; {Confuse}

Begin
  A := 1;
  B := 2;
  C := 3;
  D := 4;
  write(A:10);
  write(B:10);
  write(C:10);
  write(D:10);
  writeln;
  Confuse(B, A, D);
  write(A:10);
  write(B:10);
  write(C:10);
  write(D:10);
  writeln;
End. {Confound}
