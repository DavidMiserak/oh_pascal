program HandIn (ouput, Source, Answers, Homework);
{concatenates two files.}

var Source, Answers, Homework: text;

procedure Copy (var FromFile, ToFile: text);
	{Copies FromFile to ToFile, one character at a time.}
	var Ch: char;
	begin
		while not eof(FromFile) do begin
			if eoln(FromFile) then begin
				readln(FromFile); {Handle the end-of-line.}
				writeln(ToFile);
			end else begin
				read(FromFile, Ch);
				write(ToFile, Ch);
			end {if}
		end; {while}
	end; {Copy}

begin
	writeln('Copying "source" and "answers" to "homework"...');
	reset(Source);
	reset(Answers);
	rewrite(Homework);
	{Files are open for reading and writing.}
	Copy(Source, Homework);
	writeln(Homework, 'Execution begins...');
	Copy(Answers, Homework);
	{The files have been copied.}
	writeln('All done.');
end. {HandIn}