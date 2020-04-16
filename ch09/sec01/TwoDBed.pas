
Program TwoDBed(input, output);
{A test bed for two-dimensional arrays.}

Const 
  MAX = 4;

Type 
  GridTYPE = array [1 .. MAX, 2 .. MAX] Of integer;

Var 
  Grid1, Grid2, Grid3 : GridTYPE;
  i, j                : integer;

Begin
  For i := 1 To MAX Do
    Begin
      For j := 1 To MAX Do
        Begin
          Grid1[i,j] := j + ((i-1) * MAX); {Row by row.}
          Grid2[j,i] := j + ((i-1) * MAX); {Column by column.}
          Grid3[i,j] := i * j;
        End;
    End;
End. {TwoDBed}
