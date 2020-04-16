Procedure IterativeReverse(TheNumber : integer);
Begin
  Repeat
    write(TheNumber Mod 10:1);
    TheNumber := TheNumber Div 10;
  Until TheNumber = 0
End; {IterativeReverse}
