program Words (input, output);
{A state filter that couns words that are sperated be one or more blanks.}
var InAWord, ItWasBlank: boolean;
    Count: integer;
    Ch: char;
begin
	writeln('Say something poetic so I can count words.');
	Count := 0;
	InAWord := FALSE;
	while not eof do begin
		read(Ch);
		if Ch = ' ' 
			then ItWasBlank := TRUE
			else begin {Ch was a character.}
				ItWasBlank := FALSE;
				InAWord    := TRUE;
			end;
		if ItWasBlank and InAWord then begin {A word just ended.}
			InAWord := FALSE;
			Count := Count + 1;
		end; {if}
	end; {while}
	write('The number of words was: ');
	writeln(Count: 1);
end. {Words}