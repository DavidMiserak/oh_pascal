program MrRogers(input, output);
{determine if an input number can be devided by 2, 3, 5, and/or 6.}
var TheNumber: integer;
begin
	write ('How man toy pieces are there, Jim & Rush? ');
	readln(TheNumber);
	write ('Socially accetable cominations are: ');
	if (TheNumber mod 2) = 0 then begin write (2:2) end;
	if (TheNumber mod 3) = 0 then begin write (3:2) end;
	if (TheNumber mod 5) = 0 then begin write (5:2) end;
	if (TheNumber mod 6) = 0 then begin write (6:2) end;
	writeln;
end. {MrRogers}
