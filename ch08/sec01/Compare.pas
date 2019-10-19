function Compare (A, B: char): RelationTYPE;
{Represents the relative alphabetical ordering of A and B.}
begin
	if A = B
		then Compare := LessThan
		else Compare := GreaterThan
end; {Compare}