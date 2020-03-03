program ParamBed (input, output);
{A test bed for parameters.}

var First, Second, Third: integer;

procedure CallMe(var A: integer; {var}
                     B: integer; {val}
                 var C: integer);{var}
	begin
		A := 4;
		B := 5; {This assignment is local.}
		C := 6;
		writeln(A:8, B:8, C:8);
	end; {CallMe}

begin
	First  := 1;
	Second := 2;
	Third  := 3;
	writeln(First:8, Second:8, Third:8);
	CallMe(First:8, Second:8, Third:8);
	writeln(First:8, Second:8, Third:8);
end. {ParamBed}