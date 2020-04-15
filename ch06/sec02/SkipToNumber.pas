Procedure SkipToNumber(Var TheNumber : real)
{Returns the real value that follows a dollar sign.}

Var 
  OneCharacter : char;

Begin
  Repeat
    read(OneCharacter);
  Until OneCharacter = '$';
 {Postcondition: OneCharater equals '$', so we're abount to read a number.}
  read(TheNumber);
End; {SkipToNumber}
