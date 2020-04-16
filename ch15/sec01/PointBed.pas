
Program PointBed(output);
{A first test bed for pointers.}

Type 
  CharPOINT = ^char;

Var 
  FirstPtr, SecondPtr, ThirdPtr : CharPOINT;

Begin
  new(FirstPtr);
  new(SecondPtr);
  FirstPtr^  := 'A';
  SecondPtr^ := 'B';
  ThirdPtr   := FirstPtr;
  write(FirstPtr ^);
  write(SecondPtr ^);
  writeln(ThirdPtr ^);
End. {PointBed}
