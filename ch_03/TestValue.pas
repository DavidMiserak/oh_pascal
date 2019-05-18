program TestValue (output);
{Demonstates value parameters.}
var x, y : integer;
procedure NoEffect (x, y : integer);
{Show that assignments to value parameters don't effect arguments.}
begin
	x := y;
	y := 0;
	writeln(x, ' ', y);
end; {NoEffect}
begin
	x := 1;
	y := 2;
	writeln  (x, ' ', y);
	NoEffect (x, y);
	writeln  (x, ' ', y);
end.
