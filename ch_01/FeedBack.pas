program FeedBack (input, output);
{Reads and prints the value of a variable.}
var QuakeYear: integer;
{This declares a variable called QuakeYear.}
begin
	writeln ('When was the San Francisco earthquake?');
	{After printing this message, the computer waits for the program
	user to enter a value, or reads it from a data file.}
	readln  (QuakeYear);
	write   ('The great Quake occurred in ');
	writeln (QuakeYear);
end.
