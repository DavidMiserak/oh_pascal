program ForBed(input, output);
{A test bed for trying out for loops.}
var Outer, Middle, Inner: integer;
begin 
	for Outer  := 1 to 5 do begin
		for Middle := 1 to 5 do begin
			for Inner  := 1 to 5 do begin
				write  (Outer : 5);
				write  (Middle:5);
				write  (Inner : 5);
				writeln(' Wow, am I getting dizy!');
			end
		end
	end
end. {ForBed}
