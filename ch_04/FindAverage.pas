program FindAverage (input, output);
{Averages NUMBEROFVALUES input values.}
const NUMBEROFVALUES = 50; {Amount of input expected}
var Counter: integer;
    Total, Average: real;
procedure GetValues (var Sum: real);
var Number: real;
begin
	read(Number);
	Sum := Sum+Number;
end; {GetValues}
begin
	Total := 0;
	for Counter := 1 to NUMBEROFVALUES do
		GetValues(Total);
	Average := Total/NUMBEROFVALUES;
	writeln('The average of ', NUMBEROFVALUES:1, ' values is ', Average)
end.
