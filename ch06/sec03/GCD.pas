Function GCD(Larger, Smaller : integer) : integer;
{Employs Euclid's algorithm to return the GCD of two numbers.}

Var 
  Remainder : integer;

Begin
  Repeat {until each instance of the GCD is removed from Smaller}
    Remainder := Larger Mod Smaller;
    Larger    := Smaller;
    Smaller   := Remainder;
  Until Smaller = 0;
 {Larger represents the greates common divisor.}
  GCD := Larger;
End; {GCD}
