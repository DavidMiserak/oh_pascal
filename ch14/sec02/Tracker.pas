program Tracker (input, output);
{Uses sets to find which letters do and don't appear in a text sample.}

type CharSetTYPE = set of char;

var Current: char;
    IncludedLetters, MissingLetters: CharSetTYPE;

begin
	writeln('Type in a line of your wide randing vocabulary.');
	{Initialization}
	IncludedLetters := [];
	MissingLetters := ['A' .. 'Z'];
	{Update}
	while not eoln do begin
		read(Current);
		IncludedLetters := IncludedLetters + [Current];
		MissingLetters  := MissingLetters  - [Current];
	end; {while}
	{Inspection}
	writeln('Lower-case letters included were:');
	for Current := 'a' to 'z' do begin
		if Current in IncludedLetters then begin
			write(Current);
		end
	end; {for}
	writeln;
	{Inspection}
	write('Upper-case letters not included were:'); writeln;
	for Current := 'A' to 'Z' do begin
		if Current in MissingLetters then begin
			write(Current);
		end
	end; {for}
	writeln;
end. {Tracker}