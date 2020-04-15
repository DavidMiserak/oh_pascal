
Procedure ReverseInput;
{This intentionally simple example doesn't have parameters.}

Var 
  NumOne, NumTwo : integer; {Local declarations.}

Begin
  write('Give me two numbers: ');
  read(NumOne);
  readln(NumTwo);
  write('In reverse order, the numbers are:');
  write(NumOne:5);
  writeln(NumTwo:5);
End; {ReverseInput}
