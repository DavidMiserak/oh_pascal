
Program OneDBed(input, output);
{A test bed program for one-demensional arrays.}

Const 
  SHORTmax = 5;
  LONGmax  = 10;

Type 
  ShortTYPE = array [1 .. SHORTmax] Of integer;
  LongTYPE  = array [1 .. LONGmax]  Of integer;

Var 
  Short   : ShortTYPE;
  Long    : LongTYPE;
  Current : integer;

Begin
  For Current := 1 To SHORTmax Do
    Begin
      Short[(SHORTmax - Current) + 1] := Current;
    End; {Short holds numbers in reverse.}
  For Current := 1 To LONGmax Div 2 Do
    Begin
      Long[Current] := Short[Current];
      Long[Current + (LONGmax Div 2)] := Short[Current];
    End; {Long has the reversed numbers twice.}
End.{OneDBed}
