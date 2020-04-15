
Program Switch2(input, output);
{Reverses two input integers.}

Var 
  First, Second, Temporary : integer;

Procedure GetTheNumbers;
 {Reads values for Primero and Segundo.}
Begin
  write('Please enter two integers: ');
  read(First);
  readln(Second);
End; {GetTheNumbers}

Procedure SwapThem;
 {Swaps the values of two variables.}
Begin
  Temporary := First;
  First     := Second;
  Second    := Temporary;
End; {SwapThem}

Procedure PrintTheResults;
 {Prints two variables.}
Begin
  write('Reversed, the numbers are ');
  write(First);
  write(' and ');
  writeln(Second);
End; {PrintTheResults}

Begin {main program}
  GetTheNumbers;
  SwapThem;
  PrintTheResults;
End. {Switch2}
