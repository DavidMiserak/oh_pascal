Function Newton(Number : real) : real;
{Use Newton's method to approximate a square root.}

Const 
  EPSILON = 1.0E-09;

Var 
  OldGuess, NewGuess : real;

Begin
  NewGuess := 1.0; {Take a lousy first guess.}
  Repeat
    OldGuess := NewGuess;
    NewGuess := ((Number/OldGuess) + OldGuess)/2.0;
  Until abs(NewGuess - OldGuess) < EPSILON;
 {The difference betwwen approximations is less than EPSILON.}
  Newton := NewGuess;
End; {Newton}
