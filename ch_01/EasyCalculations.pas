program EasyCalculations (input, output);
{Shows that expressions are evaluated before output.}
var Cat, Rat : integer;
begin
	writeln ('Enter two integer values');
	readln  (Cat, Rat);
	writeln (Cat, ' ', Rat);
	writeln (Cat+Rat, ' ', Cat-Rat);
	writeln (Cat/Rat, ' ', Cat*Rat)
end.
