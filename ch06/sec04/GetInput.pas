procedure GetInput(var Value: integer; Lower, Upper: integer);
{Gets and returns a Value between Lower and Upper, inclusive.}
begin
	repeat {until Value is in the proper range}
		readln(Value);
		if Value < Lower
			then writeln('That''s too small. Try again.');
			else if Value > Upper
				then writeln('That''s too large. Try again.')
	until (Value >= Lower) and (Value <= Upper);
end; {GetIUnput}