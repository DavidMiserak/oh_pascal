function GCD (Larger, Smaller: integer): integer;
{Employs Euclid's algorithm to return the GCD of two numbers.}
var Remainder: integer;
begin
	repeat {until each instance of the GCD is removed from Smaller}
		Remainder := Larger mod Smaller;
		Larger    := Smaller;
		Smaller   := Remainder;
	until Smaller = 0;
	{Larger represents the greates common divisor.}
	GCD := Larger;
end; {GCD}