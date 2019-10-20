program Switch2 (input, output);
{Reverses two input integers.}

var First, Second, Temporary: integer;

procedure GetTheNumbers;
	{Reads values for Primero and Segundo.}
	begin
		write('Please enter two integers: ');
		read(First);
		readln(Second);
	end; {GetTheNumbers}

procedure SwapThem;
	{Swaps the values of two variables.}
	begin
		Temporary := First;
		First     := Second;
		Second    := Temporary;
	end; {SwapThem}

procedure PrintTheResults;
	{Prints two variables.}
	begin
		write('Reversed, the numbers are ');
		write(First);
		write(' and ');
		writeln(Second);
	end; {PrintTheResults}

begin {main program}
	GetTheNumbers;
	SwapThem;
	PrintTheResults;
end. {Switch2}