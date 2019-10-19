procedure Multiply (var Info: array [First .. Last: integer] of real; Times: real);
{Mutiply every component of Info by Times.}
var i: integer; {This counter variable has the same type as the bounds.}

begin
	for i := First to Last do begin
		Info[i] := Info[i] * Times
	end;
end; {Multiply}