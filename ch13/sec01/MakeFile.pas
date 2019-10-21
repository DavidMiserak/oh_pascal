program MakeFile (Results, input, output);
{Echoes program input into a permanent disk file.}
var Results: text; {The file variable must match the heading.}
    Current: char;

begin
	writeln('Give me some deathless prose to save.');
	rewrite(Results); {Create an empty output file.}
	while not eof do begin {We're using that standard input file.}
		if eoln then begin
			readln; {Deal with end-of-line.}
			writeln(Results); {write and writeln can get a file name argument.}
		end else begin {Deal with an ordinary character.}
			read(Current);
			write(Results, Current); {If a file name is given, output goes to it.}
		end
	end; {while}
	writeln('All done. File "Results" has been saved for posterity.')
end. {MakeFile}