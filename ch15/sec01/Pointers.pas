program Pointers (output);
{Demonstrates pointer allocation and assignment.}

type CharPOINT = ^ char;

var FirstPtr, SecondPtr, ThirdPtr: CharPOINT;

begin
	{Allocate a char-sized location for each pointer to address.}
	new(FirstPtr);
	new(SecondPtr);
	FirstPtr ^ := 'A'; {Give the location a value.}
	SecondPtr ^ := 'B'; {Store a different value here.}
	ThirdPtr := FirstPtr; {Give the first location a second name.}
	write(FirstPtr ^);
	write(SecondPtr ^);
	write(ThirdPtr ^);
	writeln;
end. {Pointers}