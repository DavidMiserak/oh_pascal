Procedure Multiply(Var Info : Array [First .. Last : integer] Of real; Times : real);
{Mutiply every component of Info by Times.}

Var
  i : integer; {This counter variable has the same type as the bounds.}

Begin
  For i := First To Last Do
    Begin
      Info[i] := Info[i] * Times
    End;
End; {Multiply}
