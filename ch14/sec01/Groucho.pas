program Groucho (input, output);
{Spots values in a set of 'secret' letters.}

type Letterset = set of char;
var Secret: Letterset;
    Ch: char;

begin
	{Begin by initializing the Secret set variable.}
	Secret := ['g', 'r', 'o', 'u', 'c', 'h'{, 'o'}];
	{Then' try to prompt some input.}
	writeln('Try to guess the secret letters. Start typing.');
	while not eoln do begin
		read(Ch);
		if Ch in Secret then begin
			write('Beep!! ');
		end
	end; {while}
	writeln;
end. {Groucho}