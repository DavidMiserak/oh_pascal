program Counter(input, output);
{Counts the number of characters and lines in input text.}
var Ch: char;
    CharCount, LineCount: integer;
begin
	CharCount := 0;
	LineCount := 0;
	writeln('Give me a few line of input to count.');
	while not eof do begin
		if eoln then begin
			LineCount := LineCount + 1;
			readln;
		end else begin
			CharCount := CharCount + 1;
			read(Ch);
		end; {if}
	end; {while}
	write(CharCount: 1); write(' characters read, ');
	write(LineCount: 1); writeln(' lines read.');
end. {Counter}