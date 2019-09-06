program Gauss(output);
{Adds the sequence of numbers 1 through 100.}
var Sum: integer;
procedure Add (var Sum: integer; Limit: integer);
{Adds the sequence 1 through Limit to Sum.}
var Count: integer; {The counter variable must be local.}
begin
	for Count := 1 to Limit do begin
		Sum := Sum + Count;
	end;
	{Sum represents the added sequence.}
end; {Add}
begin
	Sum := 0;
	Add(Sum, 100);
	write  ('The sum of 1 .. 100 is: ');
	writeln(Sum: 1);
end. {Gauss}
