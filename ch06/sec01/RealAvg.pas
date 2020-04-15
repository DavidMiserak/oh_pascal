
Program RealAvg(input, output);
{Averages a series of numbers.}

Var 
  Value, Total : real;
  Counter      : integer;

Begin {RealAvg}
  writeln('Give me some numbers to average.');
  writeln('End the list with a negative number.');
  Total := 0.0; {initialize an accumulator}
  Counter := 0; {initialize a counter}
  read(Value);  {get the first value to see if we've reached the bound yet}
 {Before: Should we enter the loop?}
  While (Value >= 0.0) Do
    Begin
  {During: Do we take the right steps withing the loop?}
      Total := Total + Value; {increase the accumulator}
      Counter := Counter + 1; {increment the counter}
      read(Value);            {approach the loop's bound}
    End; {while}
 {After: What do we really know after the loop is done?}

{The loop's postcondition -- what we know -- is that Value is negative.  If}
{Count is non-zero, then it holds the number of values, and Total is their sum.}
  If Counter = 0
    Then
    Begin
      writeln('There weren''t any data entered.')
    End
  Else
    Begin
      write('The average of ');
      write(Counter:1);
      write(' values is ');
      writeln(Total/(Counter): 1: 3);
    End; {if}
End. {ReadAvg}
