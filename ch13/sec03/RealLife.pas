program RealLife (InFile, OutFile, output);
{Reads a text file of reals and produces a real file.}

type RealFileTYPE = file of real;

var OutFile: RealFileTYPE;
    InFile: text;
    Number: real;

begin
	write('Translating text (InFile) into reals (OutFile)...')
	reset(InFile);
	rewrite(OutFile);
	{All our ducks are in line, and we're ready to go.}
	while not eof(InFile) do begin
		readln(InFile, Number); {We read text...}
		write(OutFile, Number); {...but we write real values.}
	end;
	{Postcondition: we've read InFile and filled OutFile.}
	writeln('All done.');
end. {RealLife}