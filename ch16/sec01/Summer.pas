program Summer(input, output);
{Uses a recursive function for addition.}

var Bound :  integer;

function Sum(Limit : integer): integer;
{Recursively sums the posive numbers 1 through Limit.}
begin
   if Limit = 1
      then Sum := Limit
   else Sum := Limit + Sum(Limit - 1)
end; {Sum}

begin
   write('I add 1..n the hard way. What''s n? ');
   readln(Bound);
   write('The sum is: ');
   writeln(Sum(Bound):1);
end. {Summer}
