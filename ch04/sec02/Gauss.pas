
Program Gauss(output);
{Adds the sequence of numbers 1 through 100.}

Var 
  Sum : integer;

Procedure Add (Var Sum : integer; Limit : integer);
{Adds the sequence 1 through Limit to Sum.}

Var 
  Count : integer; {The counter variable must be local.}

Begin
  For Count := 1 To Limit Do
    Begin
      Sum := Sum + Count;
    End;
{Sum represents the added sequence.}
End; {Add}

Begin
  Sum := 0;
  Add(Sum, 100);
  write  ('The sum of 1 .. 100 is: ');
  writeln(Sum: 1);
End. {Gauss}
