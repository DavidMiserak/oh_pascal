program Splitter (numbers, odds, events, output);
{Splits a file of numbers into separate odds and evens files.}

var numbers odds, evens: text; {They're all files of characters...}
    Current: integer; {...but we can read integers as through they were typed in.}

begin
	writeln('Splitting "numbers"...');
	reset(numbers);
	{We're prepared to read from numbers.}
	rewrite(odds);
	rewrite(evens);
	{We're prepared to write to odds and evens.}
	while not eof(numbers) do begin
		readln(numbers, Current);
		if odd(Current)
			then begin writeln(odds, Current: 1) end
			else begin writeln(evens, Current: 1) end
	end; {while}
	{All the numbers have been read and echoed to new files.}
	writeln('All finished creating files "odds" and "evens".');
end. {Splitter}