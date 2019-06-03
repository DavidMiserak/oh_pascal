program ArrayUser (input, output);
{Reads in 10 values, the prints them in reverse order.}
type TenValues = array [1..10] of integer;
var i: integer; {the for loop's counter variable.}
Hold: TenValues;
begin
	writeln('This program will read ten integers, the print ');
	writeln('them in reverse.  Please enter ten numbers.');
	for i := 1 to 10 do {Get the values.}
		read(Hold[i]);
	for i := 10 downto 1 do
		write(Hold[i]:5);
	writeln
end. {ArrayUser}
