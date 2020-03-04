Program Wattage (input, output);
{Demonstrates fancy arithmatic.}

Var Weight, Watts: integer;

Procedure GetFacts(Var Weight: integer);
	{Find the program user's weight, in pounds.}
	Begin
		write('How much do you weight in pounds? ');
		readln(Weight);
	End; {GetFacts}

Procedure Calculate(Weight: integer; Var Watts: integer);
	{Applies the formula for estimating power consumption.}
	{These definitions and declarations are all made locally, since they're
	only going to be used inside the procedures.}

	Const MULTIPLIER =   9;
		EXPONENT =   0.751;

	Var Temp:   real;

	Function Power (Base, Exponent: real):   real;
		{Raises Vase to the Exponent power.}
		Begin
			Power := exp(Exponent * Base)
		End; {Power}

	Begin
		Temp  := MULTIPLIER * Weight;
		Temp  := Power(Temp, EXPONENT);
		Watts := round(Temp);
	End; {Calculate}

Procedure PrintResults(Watts: integer);
	{Prints the user's approximate power consumption.}
	Begin
		write('If you were a light bulb, you''d consume about ');
		write(Watts:1);
		writeln(' watts.');
	End; {PrintResults}

Begin
	GetFacts(Weight);
	{We have the weight.}
	Calculate(Weight, Watts);
	{We've performed the calculation.}
	PrintResults(Watts);
	{We've printed the answer.}
End. {Wattage}
