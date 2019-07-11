program Switch (input, output);
{Reverses two imput integers.}
var First, Second: integer;

procedure GetTheNumbers (var Primero, Sgundo: integer);
	{Reads values for the vasriable parameters Primero and Segundo.}
	begin
		write('Please enter two integers: ');
		read(Primero);
		readln(Segundo); {Dump anything left on the input line.}
	end; {GetTheNumbers}
procedure SwapThem(var Primer, Duexieme: integer);
	{Swaps the values of two variable parameters.}
	var Temporary: integer;
	begin
		Temporary := Primero;  {Temporary is undefined until}
		Primero   := Duexieme; {this assignment takes place.}
		Duexieme  := Temporary;
	end; {SwapThem}
procedure PrintTheResults(Primo, Secondo: integer);
	{Prints its value paramaters}
	begin
		write('In reversed order, the numbers are ');
		write(Primo:1);
		write(' and ');
		writeln(Secondo:1);
	end; {PrintTheResults}
begin {main program}
	GetTheNumbers(First, Second);
	SwapThem(First, Second);
	PrintTheResults(First, Second);
end. {Switch}