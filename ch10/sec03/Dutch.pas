program Dutch (input, output);
{A test harness for a solution to the Dutch Flag problem.}

const LIMIT = 15; {Size of the flag.}
      DEBUGGING = TRUE; {Controls a call of Print in FlagSort}

type ColorTYPE = (red, white, blue);
     FlagTYPE = array[1 .. LIMIT] of ColorTYPE;

var Flag: FlagTYPE;

procedure Initialize (var Flag: FlagTYPE);
	{A truly simple-minded procedure that initialized the flag.}
	var i: integer;
	begin
		for i := 1 to (LIMIT div 3) do begin
			Flag[(3 * i) - 2] := red; {Alternate red, white, and blue.}
			Flag[(3 * i) - 1] := white;
			Flag[(3 * i)] := blue;
		end
	end; {Initialize}

procedure PrintFlag (Flag: FlagTYPE);
	{Displays the content of the Flag array.}
	var Count: integer;
	begin
		for Count := 1 to LIMIT do begin
			case Flag[Count] of
				red: write('R ');
				white: write('W ');
				blue: write('B ');
			end; {case}
		end; {for}
		writeln;
	end; {PrintFlag}

procedure FlagSort (var Flag: FlagTYPE);
	{Sorts and array of mixed red, white, and blue values.}
	var RedBorder, WhiteBorder, BlueBorder: integer;

	procedure Swap(var First, Second: ColorTYPE);
		{Exchanges two component values.}
		var Temp: ColorTYPE;
		begin
			Temp := First; First := Second; Second := Temp;
		end; {Swap}

	begin {FlagSort}
		RedBorder   := 0;
		WhiteBorder := 1;
		BlueBorder  := LIMIT + 1;
		repeat
			case Flag[WhiteBorder] of
				white: WhiteBorder := WhiteBorder + 1;
				red:
					begin
						RedBorder := RedBorder + 1;
						Swap(Flag[RedBorder], Flag[WhiteBorder]);
						WhiteBorder := WhiteBorder + 1;
					end;
				blue:
					begin
						BlueBorder := BlueBorder - 1;
						Swap(Flag[WhiteBorder], Flag[BlueBorder]);
					end
			end; {case}
			if DEBUGGING then begin PrintFlag(Flag) end
		until WhiteBorder = BlueBorder;
	end; {FlagSort}

begin {main program}
	writeln('Initial flag is:');
	Initialize(Flag);
	PrintFlag(Flag);
	writeln;
	FlagSort(Flag);
	writeln('Flag sort complete.')
end. {Dutch}