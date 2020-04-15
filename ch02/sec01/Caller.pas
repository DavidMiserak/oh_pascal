
Program Caller(input, output);
{Show a sequence of procedure calls.}

Procedure First;
Begin
  writeln('In procedure First');
End; {First}

Procedure Second;
Begin
  writeln('Second begins...');
  First;
  writeln('Second ends...');
End; {Second}

Procedure Third;
Begin
  writeln('Third begins...');
  Second;
  writeln('Third ends...');
End; {Third}

Begin
  writeln('Main program begins...');
  Third;
  writeln('Main program ends...');
End. {Caller}
