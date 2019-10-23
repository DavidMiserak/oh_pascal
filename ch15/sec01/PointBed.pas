program PointBed (output);
{A first test bed for pointers.}

type CharPOINT = ^ char;

var FirstPtr, SecondPtr, ThirdPtr: CharPOINT;

begin
	new(FirstPtr);
	new(SecondPtr);
	FirstPtr ^ := 'A';
	SecondPtr ^ := 'B';
	ThirdPtr := FirstPtr;
	write(FirstPtr ^);
	write(SecondPtr ^);
	writeln(ThirdPtr ^);
end. {PointBed}