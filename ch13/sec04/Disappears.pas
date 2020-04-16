
Program Disappears(input, output);
{NewFile never shows up. Why?}

Var 
  NewFile: text;

Begin
  rewrite(NewFile);
  writeln(NewFile, 'Hi there!');
End. {Disappears}
