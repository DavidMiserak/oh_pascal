Procedure ClearScreen;
{Clears the screen. Terminal must obey ANSI/VT100 escape sequences.}

Const 
  ESCAPE = 27; {The ASCII position of the ESCAPE key.}

Begin
  write(chr(ESCAPE), '[2J')
End; {ClearScreen}
