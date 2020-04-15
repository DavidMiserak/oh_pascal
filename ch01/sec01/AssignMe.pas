
Program AssignMe(input, output);
{Show a variable declaration and input procedure call. From page 8.}

Var
  Age : integer; {The variable declaration.}

Begin
  write('How old are you? '); {Prompt for input.}
  readln(Age);                {Get and store the number the user types.}
  Age := Age + 20;            {Assign a new value to Age.}
  write('In twenty years you will be ');
  writeln(Age);
End. {AssignMe}
