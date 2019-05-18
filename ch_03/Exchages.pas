program Exchages (output);
{Demonstates the use of variable parameters.}
var Little, Big : integer;

procedure Switch (var First, Second : integer);
{Exchanges the values to First and Second.}
var Temporary : integer;
begin
	Temporary := First;
	First     := Second;
	Second    := Temporary;
end; {Switch}

begin
	Big    := 5;
	Little := 10;
	writeln (Big, ' ', Little);
	Switch(Big, Little);
	writeln (Big, ' ', Little)
end. {Exhanges}
