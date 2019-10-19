procedure SkipToNumber (var TheNumber: real)
{Returns the real value that follows a dollar sign.}
var OneCharacter: char;
begin
	repeat
		read(OneCharacter);
	until OneCharacter = '$';
	{Postcondition: OneCharater equals '$', so we're abount to read a number.}
	read(TheNumber);
end; {SkipToNumber}
