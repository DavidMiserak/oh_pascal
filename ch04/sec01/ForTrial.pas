program ForTrial(output);
{Prints a popular California bottled-water drinking song.}
var Count: integer; {Count serves as the counter variable.}

procedure Verse (Current: integer);
{Prints the Current verse of the song.}
begin
	write  (Current: 1);
	write  (' salmon fillets on the lawn,');
	write  (Current: 1);
	writeln(' salmon fillets.');
	writeln('If one of those salman should happen to spawn,');
	write  (Current + 1: 1);
	write  (' salmon fillets on the lawn.');
end; {Verse}
begin {ForTrial}
	for Count := 1 to 100 do begin
		Verse(Count);
		writeln
	end;
end. {ForTrial}
