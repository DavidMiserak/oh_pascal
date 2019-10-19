program EchoText(input, output);
{Reads an echoes text input while preserving line structure.}
var Ch: char;
begin
	writeln('Type in a few lines for me to echo.');
	while not eof do begin
		if eoln then begin {Deal with the end-of-line}
			readln;        {Dump the remainder of the line.}
			writeln;       {Print a carriage return.}
		end else begin     {Deal with an ordinary character.}
			read(Ch);
			write(Ch);
		end; {if}
	end; {while}
end. {EchoText}