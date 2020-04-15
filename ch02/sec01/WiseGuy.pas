
Program WiseGuy(input, output);
{Demonstrates the declaration and use of variables and parameters.}

Var 
  Score : integer;

Procedure GetIQ(Var IQ : integer);
{Inside GetIQ, the variable parameter IQ renames its argument.}
{It's a variable parameter because when it changes, the argument changes.}
Begin
  write('What''s your IQ? '); {Prompt for input.}
  readln(IQ);                  {Read the values.}
End; {GetIQ}

Procedure PrintValue(First : integer);
{Inside PrintValue, the value parameter gets its argument's current}
{value.  We'll use the value, but we can't permanetly change it.}
Begin
  write('You Wish! I bet you can''t even count to ');
  writeln(First:1);
End; {PrintValue}

Begin
  GetIQ(Score);      {The argument brings a value back from GetIQ.}
  PrintValue(Score); {The arguemnt sends a value to PrintValue.}
End. {WiseGuy}
