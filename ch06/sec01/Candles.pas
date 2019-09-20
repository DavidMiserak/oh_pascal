program Candles (input, output);
{Determines how long a supply of birthday candles will last.}
var CandlesNum, Birthday: integer;
begin {Candles}
	write('How old are you now?  ');
	readln(Birthday);
	write('How man candles do you have? ');
	readln(CandlesNum);
	{We have the starting information.}
	repeat
		Birthday := Birthday + 1;
		CandlesNum := CandlesNum - Birthday;
	until CandlesNum < 0;
	{The aren't enough candles for the next bithday cake.}
	write('You''ll have to buy more candles before you turn ');
	writeln(Birthday:1);
end.{Candles}