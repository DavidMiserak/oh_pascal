program Average (input, output);
{Averages a series of numbers.}

var Average: real;
    Counter, Value, Total: integer;

begin
	writeln('Give me a line of numbers to average.');
	Total   := 0; {initalize an accumulator}
	Counter := 0; {initialize a counter}
	while not eoln do begin
		Counter := Counter + 1; {increment to counter}
		read(Value);            {approach the loop's bound}
		Total := Total + Value; {increase the accumulator}
	end; {while}
	readln;
	Average := Total / Counter; {Assume there's always input.}
	write('The average was ');
	writeln(Average: 1:2);
end. {Average}