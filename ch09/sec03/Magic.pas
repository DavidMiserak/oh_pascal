program Magic (input, output);
{Reads and decides if a square is magic.}

const MAX = 4; {Size of the square.}
      MAXsquared = 16; {The number of unique numbers and it should hold.}

type MagicTYPE = array[1 .. MAX, 1 .. MAX] of integer;
     DiagonalTYPE = (left, right);

var Square: MagicTYPE;
    CheckSum, Current: integer;
    StillMagic: boolean;

procedure Load(var Square: MagicTYPE);
{Reads the magic square.}

var Row, Column: integer;

begin
	for Row := 1 to MAX do begin
		for Column := 1 to MAX do begin
			read(Square[Row, Column]);
		end; {We've read a single row.}
		readln;
	end; {We've read every row.}
end; {Load}

function Unique(Square: MagicTYPE): boolean;
{TRUE if Square holds each number in the range 1 .. MAX*MAX}

type CheckTYPE = array [1 .. MAXsquared] of boolean;
{I'll mark components TRUE if the number has appeared.}

var Appears: CheckTYPE;
    Row, Column, Current: integer;
    Result: boolean;

begin
	for Current := 1 to MAXsquared
		do begin Appears[Current] := FALSE end;
	{As far as we know, nothing has appeared yet.}
	for Row := 1 to MAX do begin
		for Column := 1 to MAX do begin
			Appears[Square[Row,Column]] := TRUE
		end {When a number does appear, mark it TRUE.}
	end;
	{Postcondition: a FALSE entry means the number didn't appear.}
	Result := TRUE; {Temporarily, at least, the square is unique.}
	for Current := 1 to sqr (MAX) do begin
		if Appears[Current] = FALSE
			then begin Result := FALSE end
	end; {for}
	{Postcondition: Result is TRUE if every number appeared.}
	Unique := Result;
end; {Unique}

function SumRow(Square: MagicTYPE; Row: integer): integer;
{Adds the values in one row.}

var Column, Sum: integer;

begin
	Sum := 0;
	for Column := 1 to MAX do begin
		Sum := Sum + Square[Row, Column];
	end; {We've added the contents of each column in one row.}
	SumRow := Sum
end; {SumRow}

function SumColumn(Square: MagicTYPE; Column: integer): integer;
{Adds the values in one column.}

var Row, Sum: integer;

begin
	Sum := 0;
	for Row := 1 to MAX do begin
		Sum := Sum + Square[Row, Column];
	end; {We've added the contents of each row in one column.}
	SumColumn := Sum
end; {SumColumn}

function SumDiagonal(Square: MagicTYPE; Which: DiagonalTYPE): integer;
{Adds the values in one diagonal.}

var Point, Sum: integer;

begin
	Sum := 0;
	case Which of
		left:
			for Point := 1 to MAX do begin
				Sum := Sum + Square[Point,Point];
			end; {We've added the upper-left to lower-right diagonal.}
		right:
			for Point := 1 to MAX do begin
				Sum := Sum + Square[Point, (MAX - Point) + 1];
			end; {We've added the upper-right to lower-left diagonal.}
	end; {case}
	SumDiagonal := Sum;
end; {SumDiagonal}

begin {Magic}
	write('Reading a magic square with side ');
	writeln(MAX: 1);
	Load(Square);
	if Unique(Square) then begin
		CheckSum   := SumDiagonal(Square, left);
		StillMagic := SumDiagonal(Square, right) = CheckSum;
		Current := 0;
		while StillMagic and (Current < MAX) do begin
			Current    := Current + 1;
			StillMagic := (SumRow(Square, Current) = CheckSum) and (SumColumn(Square, Current) = CheckSum);
		end; {The loop test}
	end; {Passing the Unique test}
	if StillMagic
		then write('Square was indeed magic, with a sum of ')
		else write('Square was not magic. Lef diagonal check sum was ');
	writeln(CheckSum: 1);
end. {Magic}