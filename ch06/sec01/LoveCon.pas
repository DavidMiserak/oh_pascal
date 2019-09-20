program LoveCon (input, output);
{Reports on the percentage of votes cast for each of three potential dates.}
var Vote, Total, Ones, Twos, Threes: integer;
procedure Report (Total, One, Two, Three: integer);
{Prints the actual percentages.}
begin {Report}
	write (trunc((One/Total)*100):5); write('%');
	write (trunc((Two/Total)*100):5); write('%');
	write (trunc((Three/Total)*100):5); write('%');
	writeln;
end; {Report}
begin {LoveCon}
	writeln('Please enter votes: 1, 2, or 3. Any other number quits.');
	Total := 0;
	Ones := 0;
	Twos := 0;
	Threes := 0;
	read(Vote);
	writeln('   One   Two  Three'); {Label the output.}
	while Vote in [1 .. 3] do begin
		Total := Total + 1; {Count the total.}
		case Vote of        {Count each vote.}
			1: Ones := Ones + 1;
			2: Twos := Twos + 1;
			3: Threes := Threes + 1;
		end; {case}
		Report(Total, Ones, Twos, Threes); {Report the situation.}
		read(Vote);                        {Get the next vote.}
		
	end; {while}
	writeln('May all your dates be love connections!');
end. {LoveCon}
