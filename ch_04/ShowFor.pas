program ShowFor (output);
{Demonstrates the for loop.}
var LoopCount: integer;
begin
	writeln('This program shows what a for loop does.');
	for LoopCount := 1 to 5 do
		writeln('This is loop number ', LoopCount:1);
	writeln('All done.')
end.
