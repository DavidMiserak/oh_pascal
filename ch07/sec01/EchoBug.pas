program EchoBug (input, output);
{Reads and echoes text input, but mishandles the end-of-line.}
var Ch: char;
begin
	writeln('Types in a few lines for me to echo.');
	while not eof do begin {eof means end-of-file. It's unpronunceable.}
		read(Ch);          {Read one character.}
		write(Ch);         {Print the character.}
	end; {while}
end. {EchoBug}