program Pervade (input, output);
{Computes a pervasive square root to the limit of real accuracy.}
var Number, Current, Last: real;
    Count: integer;
begin
	write('Enter a number. ');
	readln(Number);
	Count := 0;
	Current := sqrt(Number);
	repeat {Until two approximations are indistinguishable}
		Last := Current;
		Current := sqrt(Number + Last);
		Count := Count + 1;
	until Current = Last;
	{Postcondition: We've reached the limit of real representation.}
	write('The root took ');
	write(Count: 1);
	write(' steps to converge on ');
	writeln(Current: 3:10);
end. {Pervade}