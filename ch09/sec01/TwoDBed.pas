program TwoDBed (input, output);
{A test bed for two-dimensional arrays.}

const MAX = 4;

type GridTYPE = array [1 .. MAX, 2 .. MAX] of integer;

var Grid1, Grid2, Grid3: GridTYPE;
    i, j: integer;

begin
	for i := 1 to MAX do begin
		for j := 1 to MAX do begin
		Grid1[i,j] := j + ((i-1) * MAX); {Row by row.}
		Grid2[j,i] := j + ((i-1) * MAX); {Column by column.}
		Grid3[i,j] := i * j;
		end;
	end;
end. {TwoDBed}