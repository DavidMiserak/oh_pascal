program LoopBed (input, output);
{A test bed program for loops.}
var Count, Total, Limit: integer;
    Current: integer; {Make this easy to change.}
begin {LoopBed}
	writeln('Enter number of numbers, followed by numbers.');
	Total := 0;
	Count := 0;
	read(Limit);
	repeat
		read(Current);
		Total := Total + Current;
		Count := Count + 1;
	until (Count = Limit) or (Current = 5);
	writeln(Count);
	writeln(Total);
end. {LoopBed}