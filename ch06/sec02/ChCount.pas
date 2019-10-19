procedure ChCount (var Count: integer);
{Counts the number of letters in a sentence that ends with ., ?, or !.}
var Ch: char;
begin
	Cont := 0;
	read(ch); {Approach the bound.}
	while(Ch <> '.') and (Ch <> '?') and (Ch <> '!'); do begin
		Count := Count + 1; {If we're in the loop, increment the count.}
		read(Ch); {Approach the bound again.}
	end {While}
	{Postcondition: Count represents the number of non-sentinel characters read.}
end; {ChCount}
