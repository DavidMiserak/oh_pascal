
Program Print(input, output);

Procedure Echo;

Var 
  TheCharacter :  char;

Begin
  read(TheCharacter);
  write(TheCharacter);
  If TheCharacter <> '.' Then
    Begin
      Echo
    End;
End; {Echo}

Begin
  write('Type in a sentence that ends wit a period.');
  writeln;
  Echo;
  writeln;
End. {Print}
