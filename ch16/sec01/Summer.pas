
Program Summer(input, output);
{Uses a recursive function for addition.}

Var 
  Bound :  integer;

Function Sum(Limit : integer) : integer;
{Recursively sums the posive numbers 1 through Limit.}
Begin
  If Limit = 1
    Then Sum := Limit
  Else Sum := Limit + Sum(Limit - 1)
End; {Sum}

Begin
  write('I add 1..n the hard way. What''s n? ');
  readln(Bound);
  write('The sum is: ');
  writeln(Sum(Bound): 1);
End. {Summer}
