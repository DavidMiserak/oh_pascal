program ReadTest (input, output);
{A test bed for learning about read and readln.}

var First  : integer;
    Second : integer;
    Third  : integer;

begin
	writeln('Ready to start testing, What should I read?');
	read(First);  {What would happen to the input shown}
	read(Second); {if these were realn statements?}
	read(Third);
	writeln('All done. Values are');
	writeln(First:1);   {Try miniman spacing.}
	writeln(Second:20); {Try a larger field.}
	writeln(Third:0);   {See what happens!}
end. {ReadTest}