program ShowTime(input, output);
{Prints a multiplication table of Limit values.}
var Limit: integer;

procedure LabelTable (Limit: integer);
{Draw the top two lines that lable the table.}
var Column: integer;
begin
	write ('    '); {Leading spaces at the top.}
	for Column := 1 to Limit do begin
		write(Column: 1);
		write('| '); {Print the bar and space.}
	end;
	writeln;
	{The columns have been labeled.}
	write('---'); { Leading dashed on the second line.}
	for Column := 1 to Limit do begin
		write('---');
	end;
	writeln;
	{The dashed line is done.}
end; {LabelTable}

procedure DrawTable (Limit: integer);
{Print the times table.}
var Row, Column: integer;
begin
	for Row := 1 to Limit do begin
		write(Row: 1); {Label every row}
		write('| ');
		{Going to Limit instead of Row would print duplicates.}
		for Column := 1 to Row do begin
			write(Row*Column: 3);
		end; {the inner for loop}
		writeln;
		{Each row has been printed.}
	end; {the outer for loop}
end; {DrawTable}

begin
	write('Enter the upper limit for this times table: ');
	readln(Limit);
	{Limit has been initialized.}
	LabelTable(Limit);
	{The cart is labeled.}
	DrawTable(Limit);
	{The chart is done.}
end. {ShowTime}

