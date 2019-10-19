procedure ReadInteger (var Number: integer);
{A robust form of read for positive integer input.}
var Ch: char; {For the junk characters, if any.}
begin
	while not (input ^ in ['0' .. '9']) do begin
		read(Ch);
	end; {while}
	{Postcondition: the next character is a digit.}
	read(Number);
end; {ReadInteger}