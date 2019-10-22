program Disappears (input, output);
{NewFile never shows up. Why?}
var NewFile: text;
begin
	rewrite(NewFile);
	writeln(NewFile, 'Hi there!');
end. {Disappears}