program Describe(input, output);
{Finds out how long a word is. Then, reads the word and reports on
 any letters whose alphabetical value equals their position in the word.}

var Length,            {of the word that's being checked}
    Position: integer; {in the word as we read it}
    Current : char;

function TheyMatch(Place: integer; Letter: char): boolean;
{TRUE if Letter is in alphabetical position Place}
var PositionInAlphabet: integer;
begin
	PositionInAlphabet := 1 + (ord(Letter) - ord('a'));
	TheyMatch := PositionInAlphabet = Place;
end; {TheyMatch}
begin
	write('How many letters are in your word? ');
	read(Length);
	{We know how much input data there will be.}
	readln;
	{We've gotten rid of extra characters (like the carriage return).}
	write('Okay, type in the word. ');
	for Position := 1 to Length do begin
		read(Current);
		if TheyMatch(Position, Current) then begin write(Current); end
		else begin write('*'); end {if}
		{We've indicated the letter described its alphabetical posions.}
	end; {For}
	writeln;
end. {Describe}
