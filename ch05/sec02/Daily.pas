program Daily(input, output);
{Describes if a number will win a Califonia lottery game.}

var Bet1, Bet2, Bet3,       {The digits you bet.}
Win1, Win2, Win3: char; {The digits that won.}
BetAmount: real;

procedure ReadDigits (var Ch1, Ch2, Ch3: char);
{Read three digit character.}
begin
	read(Ch1);
	read(Ch2);
	read(Ch3);
	readln;
end; {ReadDigits}

function Identical(A1, A2, A3, B1, B2, B3: char): boolean;
{TRUE if the first three characters match the last three identically.}
begin
	Identical := (A1 = B1) and (A2 = B2) and (A3 = B3);
end; {Identical}

function AllPairs(A1, A2, A3, B1, B2, B3: char): boolean;
{TRUE if the first three characters match the last three in non-identical order.}
begin
	AllPairs := ((A1 = B1) and (A2 = B3) and (A3 = B2)) or
	((A1 = B2) and (A2 = B1) and (A3 = B3)) or
	((A1 = B2) and (A2 = B3) and (A3 = B1)) or
	((A1 = B3) and (A2 = B1) and (A3 = B2)) or
	((A1 = B3) and (A2 = B2) and (A3 = B1));
end; {AllPairs}

function AllUnique(A1, A2, A3: char): boolean;
{True if all three characters are different.}
begin
	AllUnique := (A1 <> A2) and (A1 <> A3) and (A2 <> A3);
end; {AllUnique}

begin
	write ('How much did you bet? ');
	readln(BetAmount);
	write ('Please enter the three digits you bet: ');
	ReadDigits(Bet1, Bet2, Bet3);
	write ('Please enter the tree winning digits: ');
	ReadDigits(Win1, Win2, Win3);
	if Identical(Bet1, Bet2, Bet3, Win1, Win2, Win3) then begin
		write  ('Congratulations on your match! You win $');
		writeln(BetAmount*500.0: 1:2);
	end else begin {no straight, but maybe a box}
	    if AllPairs (Bet1, Bet2, Bet3, Win1, Win2, Win3) then begin
		if AllUnique(Bet1, Bet2, Bet3) then begin
			write  ('Congratulations on your box! You win $');
			writeln(BetAmount*80.0: 1:2);
		end else begin {box with duplicates}
			write  ('Congratulations on your duplicate box! You win $');
			writeln(BetAmount*160.0: 1:2);
		end {box with duplicates}
	    end {all unique}
	    else begin {Identicall and AllPairs were both FALSE}
		writeln('You lose!');
	    end {there was a box}
	end {maybe a box}
end. {Daily}
