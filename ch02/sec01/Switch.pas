
Program Switch(input, output);
{Reverses two imput integers.}

Var 
  First, Second : integer;

Procedure GetTheNumbers (Var Primero, Segundo: integer);
 {Reads values for the vasriable parameters Primero and Segundo.}
Begin
  write('Please enter two integers: ');
  read(Primero);
  readln(Segundo); {Dump anything left on the input line.}
End; {GetTheNumbers}

Procedure SwapThem(Var Primer, Duexieme: integer);
 {Swaps the values of two variable parameters.}

Var 
  Temporary : integer;

Begin
  Temporary := Primer;   {Temporary is undefined until}
  Primer    := Duexieme; {this assignment takes place.}
  Duexieme  := Temporary;
End; {SwapThem}

Procedure PrintTheResults(Primo, Secondo: integer);
 {Prints its value paramaters}
Begin
  write('In reversed order, the numbers are ');
  write(Primo:1);
  write(' and ');
  writeln(Secondo:1);
End; {PrintTheResults}

Begin {main program}
  GetTheNumbers(First, Second);
  SwapThem(First, Second);
  PrintTheResults(First, Second);
End. {Switch}
