program FindCircumference (input, output);
{Computes the circumference of a circle}
const PI = 3.141592654;
var Circumference, Diameter : real;
begin
	writeln ('What is the diameter of the circle?');
	readln  (Diameter);
	Circumference := PI * Diameter;
	writeln ('The circle''s circumference is', Circumference)
end.
