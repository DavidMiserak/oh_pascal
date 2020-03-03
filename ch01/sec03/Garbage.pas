program Garbage (input, output);
{Shows the hazards of uninnitialized variables.}

var Letter  : char;
    Number  : integer;
    Decimal : real;

begin
	writeln(Letter);
	writeln(Number);
	writeln(Decimal);
end. {Garbage}