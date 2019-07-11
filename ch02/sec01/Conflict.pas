program Conflict (input, output);
{A shore example of precedence.}
var Name: char;
procedure Boring;
	{This procedure reuses the identifier Name.}
	var Name: char;
	begin
		Name := 'B';   {Until now, the local Name is undefined.}
		writeln(Name); {This prints the procedure's version of Name.}
	end; {Boring}
begin
	Name := 'A'; {Initialize the main program variable.}
	writeln(Name);
	Boring;
	writeln(Name);
end. {Conflict}