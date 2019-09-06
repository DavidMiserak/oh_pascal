program Coins(input, output);
{Computes minimun coinage for making change.}
const DOLLAR  = 100;
      HALF    =  50;
      QUARTER =  25;
      DIME    =  10;
      NICKEL  =   5;
      PENNY   =   1;

var Price, Given: real;   {Input real dollar amounts}
    Change: integer;      {... but use integer pennies internally.}
    ChangeIsDue: boolean;

function ConvertToPennies(Price, Given: real) : integer;
{Returns Price-Given expressed as a whole number of pennies.}
begin
	ConvertToPennies := round(100.0*(Price-Given));
end; {ConvertToPennies}

procedure GetChange(Coin: integer; var Change: integer);
{Prints the number of cons. Reduces change by that many Coins.}
var Pieces: integer;
begin
	Pieces := Change div Coin;
	Change := Change - (Pieces * Coin);
	{We know how many doins to give and what's still left over.}
	write(Pieces:1);
	case Coin of {Picks the proper action.}
		DOLLAR  : write(' dollar');
		HALF    : write(' fifty-cent piece');
		QUARTER : write(' quater');
		DIME    : write(' dime');
		NICKEL  : write(' nickel');
		PENNY   : write(' cent');
	end; {case}
	if Pieces > 1 then begin
		write('s');
	end; {if}
	writeln;
end;{GetChange}

begin {Coins}
	write('What''s the price? ');
	readln(Price);
	write('How much did you get?');
	readln(Given);
	{We may, or may not, be given more than is actually due.}
	ChangeIsDue := (Price > Given);
	Change := abs(ConvertToPennies(Price, Given));
	{Potential change is dealt with as integer pennies.}
	if Change = 0 then begin writeln('Thanks!') end
	else begin
		if ChangeIsDue then begin write('Too little! You''re short by ') end
		else begin write ('Your change is exactly ') end; {ChangeIsDue if}

		if Change >= 100 then begin GetChange(DOLLAR, Change) end;
		{Remaining Change is less than one DOLLAR. The calls below are similar.}
		if Change >= 50 then begin GetChange(HALF, Change) end;
		if Change >= 25 then begin GetChange(QUARTER, Change) end;
		if Change >= 10 then begin GetChange(DIME, Change) end;
		if Change >=  5 then begin GetChange(NICKEL, Change) end;
		if Change >=  1 then begin GetChange(PENNY, Change) end;
	end; {Change=0 else part}
end. {Coins}
