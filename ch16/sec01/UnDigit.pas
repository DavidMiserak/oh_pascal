program UnDigit(unput, output);
{Recursively reversesthedigit of a positive integer.}
var Data :  integer;
   
procedure ReverseDigits(Number : integer);
begin
   write(Number mod 10:1); {Print the 'ones' digit.}
   {If there are more digits, divide away the 'ones' digit and pass the result.}
   if (Number div 10) <> 0 then begin
      ReverseDigits(Number div 10);
   end;
end; {ReverseDigits}

begin
   writeln('Please enter a positve integer.');
   readln(Data);
   ReverseDigits(Data);
   writeln;
end. {UnDigit}
