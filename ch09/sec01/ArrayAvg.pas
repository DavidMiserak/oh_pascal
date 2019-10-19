program ArrayAvg(input, output);
{Prints only the numbers that exceed the average.}

const LIMIT = 50; {How man numbers can we hold?}

type StoreTYPE = array [1 .. LIMIT] of integer;

var Average: real;
    Counter, Value, Total, Current: integer;
    Store: StoreTYPE; {This array variable holds all the numbers.}

begin
	writeln('Give me a line of numbers to average.');
	Total   := 0; {initalize an accumulator}
	Counter := 0; {initialize a counter}
	while not eoln do begin
		Counter := Counter + 1;  {increment to counter}
		read(Value);             {approach the loop's bound}
		Total := Total + Value;  {increase the accumulator}
		Store[Counter] := Value; {save the number}
	end; {while}
	{Postcondition: Store[1] through Store[Counter] holds the numbers.}
	readln;
	Average := Total / Counter; {Assume there's always input.}
	write('The average was ');
	writeln(Average: 1:2);
	write('Above average numbers were: ');
	for Current := 1 to Counter do begin       {For each stored value...}
		if Store[Current] > Average then begin {...if it's bigger than average}
			write(Store[Current]: 4)           {...print the number.}
		end; {if}
	end; {for}
	writeln;
end. {ArrayAvg}