program PrintPattern (input, output);
{Prints a grid of stars using nested for loops.}
var LineCount, StarCount, {The for loop counter variables.}
NumberOfLines, ColumnNumber: integer;
begin
	writeln('This program will print a grid of stars.');
	writeln('You supply the demensions.  How wide is it?');
	readln (ColumnNumber);
	writeln('How deep should it be?');
	readln (NumberOfLines);
	for LineCount := 1 to NumberOfLines do begin
		for StarCount := 1 to ColumnNumber do
			write('* '); {This is the entire inner loop}
		writeln
	end {outer loop}
end. {PrintPattern}
