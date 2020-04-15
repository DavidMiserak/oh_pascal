
Program Switch1(input, output);
{Reverses two input integers.}

Var 
  First, Second, Temporary : integer;

Begin
  write('Please enter two integers: ');
  read(First);
  readln(Second);
  Temporary := First;
  First     := Second;
  Second    := Temporary;
  write('Reversed, the numbers are ');
  write(First);
  write(' and ');
  writeln(Second);
End. {Switch1}
