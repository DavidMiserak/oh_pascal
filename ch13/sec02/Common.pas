program Common (output, First, Second, Third);
{Finds a common entry in the sorted files First, Second, and Third.}

var First, Second, Third: text;
    Name1, Name2, Name3: char;

begin
	writeln('Looking for a common line in "First", "Second", and "Third".');
	reset(First);
	reset(Second);
	reset(Third);
	readln(First, Name1);
	readln(Second, Name2);
	readln(Third, Name3);
	{We have the first value from each file.}
	repeat
		if Name1 < Name2 then begin readln(First, Name1) end;
		if Name2 < Name3 then begin readln(Second, Name2) end;
		if Name3 < Name1 then begin readln(Third, Name3) end;
	until (Name1 = Name2) and (Name2 = Name3);
	{Postcondition: The current value from each file is identical.}
	write('The common value in files First, Second, and Third is: ')
	writeln(Name1); {Note that we're writing to the terminal.}
end. {Common}