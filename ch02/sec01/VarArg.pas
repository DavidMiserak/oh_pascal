
Program VarArg(input, output);
{Demonstrates variable parameters.}

Var 
  FirstInitial, LastInitial : char;
{A variable parameter's arugment must be a variable}

Procedure ReadInitials(Var First, Last : char);
{Within this procedure, the names First and Last represent}
{the argument variables. We'll call read to change their values.}
Begin
  read(First);  {Also changes the first argument variable.}
  readln(Last); {Also changes the second argument.}
End; {ReadInitials}

Begin
  write('What are your initials? ');
{At this point, FirstInitial and LastInitial have no values.}
  ReadInitials(FirstInitial, LastInitial);
{But after the call, they're both defined.}
  write('Your initials are: ');
  write(FirstInitial);
  writeln(LastInitial);
End. {VarArg}
