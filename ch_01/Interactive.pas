program Interactive (input, output);
{Demonstrates an interactive program with input and output.}
var Number : Integer;
begin
	writeln ('Please enter an integer value');
	readln  (Number);
	write   ('The number you entered was: ');
	writeln (Number) {Print the value of Number.}
end.
