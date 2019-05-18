program SeveralLines (output);
{Demonstrates procedures write and writeln.}
begin
	write   ('A fine');	     {These lines are printed...}
	write   ('romance,');
	writeln ('with no kisses.'); {...on the same output line.}
	writeln; 		     {These put two blank lines in the output,}
	writeln;		     {since there's no earlier output or new output.}
	write   ('A fine romance, ');
	writeln ('my friend, this is!')
end.	


