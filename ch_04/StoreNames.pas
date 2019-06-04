program StoreNames (input, output);
{Maintains an array of strings.}
type Name = packed array[1..10] of char;
     NameList = array[1..100] of Name;

var OneName   : Name;     {each name as it's read in}
    WholeList : NameList; {the entire list of names}
    Number,               {The total number of names}
    Start, Finish,        {the bounds for name output}
    i : integer;          {a loop counter variable}

procedure LoadOneName(var Current: Name);
{Reads in the characters of one string}
var i: integer;
begin
	for i := 1 to 10 do
		read(current[i]);
end; {LoadOneName}
begin
	writeln('How many 10-letter names will you enter?');
	readln (Number);
	writeln('Enter your names, one per line.');
	for i :=  1 to Number do begin
		LoadOneName(OneName);
		WholeList[i] := OneName;
		readln; {go to the next line.}
	end; {We've read in the list of names.}
	writeln('Enter the first and last numbers of the names you want.');
	readln(Start, Finish);
	for i := Start to Finish do
		writeln(WholeList[i]);
end. {StoreNames}
