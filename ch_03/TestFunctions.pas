program TestFunctions (output);
{A driver program that tests function Tan.}
function tan (AngleInDegrees: real) : real;
var Angle : real;
function ConvertToRadians (Angle : real) : real;
const PI = 3.1415926;
begin
	ConvertToRadians := Angle*(PI/180)
end; {ConvertToRadians}
begin
	Angle := ConvertToRadians(AngleInDegrees);
	tan   := sin(Angle)/cos(Angle)
end; {tan}
begin
	writeln ('The tangent of 0.0 degrees is ', tan(0.0));
	writeln ('The tangent of 45.0 degrees is ', tan(45.0));
	writeln ('The tangent of 60.0 degrees is ', tan(60.0));
	writeln ('The tangent of 120.0 degrees is ', tan(120.0));
	writeln ('The tangent of 135.0 degrees is ', tan(135.0))
end. {TestFunctions}
