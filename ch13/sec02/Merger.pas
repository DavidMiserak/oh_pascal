program Merger (main, Extra, Merged, Output);
{Merges Main and Extra into Merged, preserving ordering.
 Assumes that the files are ordered and that their last lines are marked.}

const ENDmarker = -1;

var Main, Extra, Merged: text;
    MainNumber, ExtraNumber: integer;

begin
	writeln('Merging "Main" and "Extra" into "Merged".');
	reset(Main);
	reset(Extra);
	rewrite(Merged);
	readln(Main, MainNumber);
	readln(Extra, ExtraNumber);
	{We're ready to go.}
	while (MainNumber <> ENDmarker)
		and (ExtraNumber <> ENDmarker) do begin
		if MainNumber < ExtraNumber then begin 
			writeln(Merged, MainNumber);
			readln(Extra, MainNumber);
		end else begin
			writeln(Merged, ExtraNumber);
			readln(Extra, ExtraNumber);
		end
	end; {while}
	{Postcondition: One source file is 'empty', so flush the other into Merged.}
	while MainNumber <> ENDmarker do begin
		writeln(Merged, MainNumber);
		readln(Merged, MainNumber);
	end; {the Main-flushing loop}
	{Postcondition: All contents of Main are Merged.}
	writeln('File merger complete.')
end. {Merger}