
Function Area(Object : Dimensions) : real;
{Computes an area that depends on an active variant.}

Begin
  With Object Do
    Case WhatShape Of 
      Square       : Area := sqr(Side1);
      Rectangle     : Area := Length*Width;
      Rhomboid      : Area := sqr(Side2) * sin(AcureAngle);
      Trapezoid     : Area := (Top1+Bottom)/2*Height;
      Parallelogram : Area := Top2*Side3*sin(ObtuseAngle);
    End {case}
End; {Area}
