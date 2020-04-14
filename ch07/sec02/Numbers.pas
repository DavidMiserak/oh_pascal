program Numbers (input, output);
{Prints only whole numbers, one per line.}
var Ch: char;
    NonDigit, InANumber: boolean;
begin
	writeln('Type in the list of ingredients.');
	while not eof do begin
		read(Ch);
		if not (Ch in ['0' .. '9'])
			then NonDigit := TRUE
			else begin {Ch was a digit.}
				NonDigit  := FALSE;
				InANumber := TRUE;
				write(Ch);
			end;
			if NonDigit and InANumber then begin {The state has changed.}
				InANumber := FALSE;
				writeln;
			end; {if}
	end; {while}
end. {Numbers}
