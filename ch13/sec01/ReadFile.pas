program ReadFile (Results, output);
{Echoes the content of an existing file.}

var Results: text;
    Current: char; {Text files are files of characters.}

begin
	writeln('About to echo the contents of a file named "Results".');
	reset(Results); {Prepare to read the file.}
	while not eof(Results) do begin {eof and eoln take file arguments.}
		if eoln(Results) then begin {Deal with end-of-line.}
			readln(Results); {Here, readln and read refer to file Results,}
			writeln;         {and not to the standard keyboard input.}
		end else begin
			read(Results, Current);
			write(Current); {write and writeln still refer to}
		end                 {the standard monitor output.}
	end;
	writeln('All done.');
end. {ReadFile}