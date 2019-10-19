procedure Dump(Data: GridTYPE);
{Imitates a programming environment's 'variables' window.}

var Row, Column: integer;

begin
	write('Contents: (');
	for Row := 1 to MAX do begin
		write('('); {One row's opening paraenthesis.}
		for Column := 1 to MAX do begin
			write(Data[Row, Column]: 1);
			if (Column < MAX) then begin write(', ') end
			{Only print commas between values.}
		end; {Column for}
		write(')'); {One row's closing paraenthesis.}
	end; {Row for}
	if (Row < MAX) then begin write(', ') end
	{Only print commas between rows.}
	writeln(')');
end; {Dump}