program Switch1 (input, output);
{Reverses two input integers.}

var First, Second, Temporary: integer;

begin
	write('Please enter two integers: ');
	read(First);
	readln(Second);
	Temporary := First;
	First     := Second;
	Second    := Temporary;
	write('Reversed, the numbers are ');
	write(First);
	write(' and ');
	writeln(Second);
end. {Switch1}