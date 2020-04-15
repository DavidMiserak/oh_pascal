
Program PiApprox(output);
{Finds a rational approximation to PI that's closer than 355/113.}

Const 
  PI = 3.14159265358979; {From Al-Kashi.}

Var 
  Numerator, Denominator : integer;
  Approximation          : real; {Will hold Numerator/Denominator.}
  TSU, EPSILON           : real; {I'll use these like constant to help set the bound.}

Begin
  writeln('The next closer approximation to pi than 355/113 is');
  Numerator     := 1; {Let's start with a terrible guess.}
  Denominator   := 1;
  Approximation := Numerator / Denominator;
  TSU           := 355.000000000000/113.000000000000; {From Tsu Ch'ung-chih.}
  EPSILON       := abs(PI - TSU);
  While abs(Approximation - PI) >= EPSILON Do
    Begin
      If Approximation < PI
        Then
        Begin
          Numerator := Numerator + 1
        End
      Else
        Begin
          Denominator := Denominator + 1
        End;
      Approximation := Numerator/Denominator;
    End; {while}
 {Numerator/Denominator is closer to PI than TSU is.}
  write(Numerator: 1);
  write('/');
  write(Denominator: 1);
  write(' = ');
  writeln(Approximation: 20:18);
End. {PiApprox}
