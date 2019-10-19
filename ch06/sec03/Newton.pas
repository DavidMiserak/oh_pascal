function Newton (Number: real): real;
{Use Newton's method to approximate a square root.}
const EPSILON = 1.0E-09;
var OldGuess, NewGuess: real;
begin
	NewGuess := 1.0; {Take a lousy first guess.}
	repeat
		OldGuess := NewGuess;
		NewGuess := ((Number/OldGuess) + OldGuess)/2.0;
	until abs(NewGuess - OldGuess) < EPSILON;
	{The difference betwwen approximations is less than EPSILON.}
	Newton := NewGuess;
end; {Newton}