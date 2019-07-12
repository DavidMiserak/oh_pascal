program Wattage (input, output);
{Demonstrates fancy arithmatic.}
var Weight, Watts: integer;
procedure GetFacts(var Weight: integer);
	{Find the program user's weight, in pounds.}
	begin
		write('How much do you weight in pounds? ');
		readln(Weight);
	end; {GetFacts}
procedure Calculate(Weight: integer; var Watts: integer);
	{Applies the formula for estimating power consumption.}
	{These definitions and declarations are all made locally, since they're
     only going to be used inside the procedures.}
     const MULTIPLIER = 9,
           EXPONENT   = 0.751;
    var Temp: real;
    function Power (Base, Exponent: real): real;
    	{Raises Vase to the Exponent power.}
    	begin
    		Power := exp(Exponent * In(Base))
    	end; {Power}
	begin
		Temp  := MULTIPLIER * Weight;
		Temp  := Power(Temp, EXPONENT);
		Watts := round(Temp);
	end; {Calculate}
procedure PrintResults(Watts: integer);
	{Prints the user's approximate power consumption.}
	begin
		write('If you were a light bulb, you''d consume about ');
		write(Watts:1);
		writeln(' watts.');
	end; {PrintResults}
begin
	GetFacts(Weight);
	{We have the weight.}
	Calculate(Weight, Watts);
	{We've performed the calculation.}
	PrintResults(Watts);
	{We've printed the answer.}
end. {Wattage}