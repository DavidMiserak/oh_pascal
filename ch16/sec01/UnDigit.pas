
Program UnDigit(input, output);
{Recursively reversesthedigit of a positive integer.}

Var 
  Data : integer;

Procedure ReverseDigits(Number : integer);
Begin
  write(Number Mod 10:1); {Print the 'ones' digit.}
   {If there are more digits, divide away the 'ones' digit and pass the result.}
  If (Number Div 10) <> 0 Then
    Begin
      ReverseDigits(Number Div 10);
    End;
End; {ReverseDigits}

Begin
  writeln('Please enter a positve integer.');
  readln(Data);
  ReverseDigits(Data);
  writeln;
End. {UnDigit}
