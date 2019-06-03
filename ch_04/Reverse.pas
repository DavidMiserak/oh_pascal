program Reverse (input, output);
{Reverses thirty characters' worth of input.}
type ShortLine = array[1..30] of char;
var i	   : integer;
Letters : ShortLine;
begin
	writeln('Please enter 30 characters'' worth of input');
	for i := 1 to 30 do begin
		read(Letters[(30 - i) + 1]);
	end;
	for i := 1 to 30 do begin
		write(Letters[i]);
	end;
	writeln
end. {Reverse}
