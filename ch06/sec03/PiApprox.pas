program PiApprox (output);
{Finds a rational approximation to PI that's closer than 355/113.}
const PI = 3.14159265358979; {From Al-Kashi.}
var Numerator, Denominator: integer;
    Approximation: real; {Will hold Numerator/Denominator.}
    TSU, EPSILON: real; {I'll use these like constant to help set the bound.}
begin
	writeln('The next closer approximation to pi than 355/113 is');
	Numerator   := 1; {Let's start with a terrible guess.}
	Denominator := 1;
	Approximation := Numerator / Denominator;
	TSU := 355.000000000000/113.000000000000; {From Tsu Ch'ung-chih.}
	EPSILON := abs(PI - TSU);
	while abs(Approximation - PI) >= EPSILON do begin
		if Approximation < PI
			then begin Numerator := Numerator + 1 end
			else begin Denominator := Denominator + 1 end;
		Approximation := Numerator/Denominator;
	end; {while}
	{Numerator/Denominator is close to PI than TSU is.}
	write(Numerator: 1);
	write('/');
	write(Denominator: 1);
	write(' = ');
	writeln(Approximation: 20:18);
end. {PiApprox}