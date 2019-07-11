program ValueArg (input, output);
{Shows how to arrange for a procedure to have arguments.}
procedure PrintInitials(First, Last: char);
	{Within this procedure, the names First and Last represent
     the argument values. We'll call write to print them.}
     begin
     	write('My initials are: ');
     	write(First);
     	writeln(Last);
     end; {PrintInitials}
begin
	PrintInitials('D', 'C'); {Any two characters can be arguments.}
	PrintInitials('Q', 'T'); {Like strings, characters are quoted.}
	PrintInitials('&', '#'); 
end. {ValueArg}