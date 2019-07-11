program ValueBed (input, output);
{A test bed for value parameters.}
procedure UseValues(First, Last: char);
	{Uses the values passed to its parameters.}
	begin
		write('My arguments are: ')
		write(First);
     	writeln(Last);
	end; {UseValues}
begin
	UseValues('D', 'C');
	UseValues('Q', 'T');
	UseValues('&', '#'); 
end. {ValueBed}