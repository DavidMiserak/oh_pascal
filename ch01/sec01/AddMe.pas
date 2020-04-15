
Program AddMe(input, output);
{Show a variable declaration and input procedure call. From page 8.}

Var Age: integer; {The variable declaration.}
Begin
  write('How old are you? '); {Prompt for input.}
  readln(Age);                {Get and store the number the user types.}
  write('In twenty years you will be ');
  writeln(Age + 20);
End. {AddMe}
