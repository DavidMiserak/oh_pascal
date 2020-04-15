
Program ValueArg(input, output);
{Shows how to arrange for a procedure to have arguments.}

Procedure PrintInitials(First, Last : char);
{Within this procedure, the names First and Last represent the argument values. We'll call write to print them.}

Begin
  write('My initials are: ');
  write(First);
  writeln(Last);
End; {PrintInitials}

Begin
  PrintInitials('D', 'C'); {Any two characters can be arguments.}
  PrintInitials('Q', 'T'); {Like strings, characters are quoted.}
  PrintInitials('&', '#');
End. {ValueArg}
