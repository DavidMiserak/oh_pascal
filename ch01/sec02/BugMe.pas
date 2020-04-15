
Program BugMe(input, output);
{Show a variable declaration and input procedure call.}

Var IQ: integer; {The variable declaration.}
Begin
  write('What''s your IQ? '); {Prompt for input.}
  readln(IQ);                 {Get and store the number the user types.}
  write('What? I bet you can''t even count to ');
  writeln(IQ:1)               {Print the minimum space.}
End. {BugMe}
