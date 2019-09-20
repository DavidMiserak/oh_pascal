program RealAvg (input, output);
{Averages a series of numbers.}
var Value, Total: real;
    Counter: integer;
begin {RealAvg}
	writeln('Give me some numbers to average.');
	writeln('End the list with a negative number.');
	Total := 0.0; {initialize an accumulator}
	Counter := 0; {initialize a counter}
	read(Value);  {get the first value to see if we've reached the bound yet}
	{Before: Should we enter the loop?}
	while (Value >= 0.0) do begin
		{During: Do we take the right steps withing the loop?}
		Total := Total + Value; {increase the accumulator}
		Counter := Counter + 1; {increment the counter}
		read(Value);            {approach the loop's bound}
	end; {while}
	{After: What do we really know after the loop is done?}
	{The loop's postcondition -- what we know -- is that Value is negative.  If
	  Count is non-zero, then it holds the number of values, and Total is their sum.}
	if Counter = 0
		then begin writeln('There weren''t any data entered.') end
		else begin write('The average of ');
		           write(Counter:1);
		           write(' values is ');
		           writeln(Total/(Counter):1:3);
	end; {if}
end. {ReadAvg}