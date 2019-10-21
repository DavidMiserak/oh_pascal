procedure LookUp (PhoneBook: BookTYPE);
	{Asks for an trues to look up a particular phone number.}
	var Area, Prefix, Number, i: integer;
	begin
		write('Enter the number in three parts: XXX XXX XXXX    ');
		read(Area);
		read(Prefix);
		read(Number);
		i := 0;
		repeat
			i := i + 1;
		until ((Area = PhoneBook[i].Area) 
			and (Prefix = PhoneBook[i].Prefix)
			and (Number = PhoneBook[i].Number))
			or (i = 100);
		{Postcondition: If the name was found it's in the ith component.}
		write('The mystery name was ')
		if (Area = PhoneBook[i].Area) and (Prefix = PhoneBook[i].Prefix)
				and (Number = PhoneBook[i].Number)
			then writeln(PhoneBook[i].Name)
			else writeln('not in your book.')
	end; {LookUp}