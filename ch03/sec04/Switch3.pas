program Switch3 (input, output);
{Reverses two input integers.}

var First, Second: integer;

procedure GetTheNumbers(var Primero, Segundo: integer);
	{Reads values for the variable parameters Primero and Segundo.}
	begin
		write('Please enter two integers: ');
		read(Primero);
		readln(Segundo);
	end; {GetTheNumbers}

procedure SwapThem(var Primer, Deuxieme: integer);
	{Swaps the values of two variable parameters.}
	var Temporary: integer;
	begin
		Temporary := Primer;
		Primer    := Deuxieme;
		Deuxieme  := Temporary;
	end; {SwapThem}

procedure PrintTheResults(Primero, Segundo: integer);
	{Prints its value parameters.}
	begin
		write('Reversed, the numbers are ');
		write(Primero);
		write(' and ');
		writeln(Segundo);
	end; {PrintTheResults}

begin
	GetTheNumbers(First, Second);
	SwapThem(First, Second);
	PrintTheResults(First, Second);
end. {Switch3}