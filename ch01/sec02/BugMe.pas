program BugMe (input, output);
{Show a variable declaration and input procedure call.}
var IQ: integer; {The variable declaration.}
begin
	write('What''s your IQ? '); {Prompt for input.}
	readln(IQ);                 {Get and sore the number the user types.}
	write('What? I bet you can''t even count to ');
	writeln(IQ:1)               {Print the monimum space.}
end. {BugMe}