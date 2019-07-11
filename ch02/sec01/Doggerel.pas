program Doggerel (input, output);
{Shows the basic for of a procedure delaration.}
procedure Spout;
	{Spouts the following bit of doggerel, or bad poetry.}
	begin
		writeln('Celery, raw, develops the jaw;');
		write('but celery, stewed, is more quietly chewed.')
	end; {Spout}
begin {The 'main' program, Doggerel}
	write('Here is a fmous poem by Ogden Nash.');
	writeln; {Call the standard procedure writeln.}
	Spout;   {Call the brand new procedure Spout.}
	writeln;
	writeln('Did you want to hear that again?');
	Spout;
	writeln;
end. {Doggerel}