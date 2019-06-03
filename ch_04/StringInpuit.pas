program StringInput (input, output);
{Demonstrates character-bycharacter string input}
type String = packed array [1..10] of char;
var Word : String;
    i    : integer;
begin
	writeln('Please enter a ten-letter word.');
	for i := 1 to 10 do
		read(Word[i]);
	writeln('You entered: ', Word)
end. {StringInput}
