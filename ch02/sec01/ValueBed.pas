
Program ValueBed(input, output);
{A test bed for value parameters.}

Procedure UseValues(First, Last : char);
 {Uses the values passed to its parameters.}
Begin
  write('My arguments are: ');
  write(First);
  writeln(Last);
End; {UseValues}

Begin
  UseValues('D', 'C');
  UseValues('Q', 'T');
  UseValues('&', '#');
End. {ValueBed}
