
Program ArrayAvg(input, output);
{Prints only the numbers that exceed the average.}

Const 
  LIMIT = 50; {How man numbers can we hold?}

Type StoreTYPE = array [1 .. LIMIT] Of integer;

Var 
  Average                        : real;
  Counter, Value, Total, Current : integer;
  Store                          : StoreTYPE; {This array variable holds all the numbers.}

Begin
  writeln('Give me a line of numbers to average.');
  Total   := 0; {initalize an accumulator}
  Counter := 0; {initialize a counter}
  While Not eoln Do
    Begin
      Counter        := Counter + 1;   {increment to counter}
      read(Value);                     {approach the loop's bound}
      Total          := Total + Value; {increase the accumulator}
      Store[Counter] := Value;         {save the number}
    End; {while}
 {Postcondition: Store[1] through Store[Counter] holds the numbers.}
  readln;
  Average := Total / Counter; {Assume there's always input.}
  write('The average was ');
  writeln(Average: 1:2);
  write('Above average numbers were: ');
  For Current := 1 To Counter Do
    Begin       {For each stored value...}
      If Store[Current] > Average Then
        Begin {...if it's bigger than average}
          write(Store[Current]: 4)           {...print the number.}
        End; {if}
    End; {for}
  writeln;
End. {ArrayAvg}
