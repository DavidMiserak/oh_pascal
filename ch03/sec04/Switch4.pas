
Program Switch4(input, output);
{Reverses two input integers.}

Procedure GetTheNumbers(Var Primero, Segundo : integer);
{Reads values for the variable parameters Primero and Segundo.}
Begin
  write('Please enter two integers: ');
  read(Primero);
  readln(Segundo);
End; {GetTheNumbers}

Procedure SwapThem(Var Primer, Deuxieme : integer);
{Swaps the values of two variable parameters.}

Var 
  Temporary: integer;
Begin
  Temporary := Primer;
  Primer    := Deuxieme;
  Deuxieme  := Temporary;
End; {SwapThem}

Procedure PrintTheResults(Primero, Segundo : integer);
{Prints its value parameters.}
Begin
  write('Reversed, the numbers are ');
  write(Primero);
  write(' and ');
  writeln(Segundo);
End; {PrintTheResults}

Procedure MakeTheSwitch;
{Call the other procedures.}

Var 
  First, Second : integer;
Begin
  GetTheNumbers(First, Second);
  SwapThem(First, Second);
  PrintTheResults(First, Second);
End; {MakeTheSwitch}

Begin {main program}
  MakeTheSwitch;
End. {Switch4}
