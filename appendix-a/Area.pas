function Area(Object: Dimensions): real;
{Computes an area that depends on an active variant.}

begin
   with Object do
      case WhatShape of
	Square	      : Area := sqr(Side1);
	Rectangle     : Area := Length*Width;
	Rhomboid      : Area := sqr(Side2) * sin(AcureAngle);
	Trapezoid     : Area := (Top1+Bottom)/2*Height;
	Parallelogram : Area := Top2*Side3*sin(ObtuseAngle);
      end {case}
end; {Area}
