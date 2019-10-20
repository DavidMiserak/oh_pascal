program Confound (input, output);
{Comments? Nope -- that would be telling}

var A, B, C, D: integer;

procedure Confuse(C, A: integer, var B: integer);
var D: integer;
begin
	A := 5; B := 6; C := 7; D := 8;
	write(A: 10); write(B: 10);
	write(C: 10); write(D: 10);
end; {Confuse}

begin
	A := 1; B := 2; C := 3; D := 4;
	write(A: 10); write(B: 10);
	write(C: 10); write(D: 10);
	writeln;
	Confuse(B, A, D);
	write(A: 10); write(B: 10);
	write(C: 10); write(D: 10);
	writeln;
end. {Confound}