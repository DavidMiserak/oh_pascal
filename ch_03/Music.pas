program Music (output);
{Illustrates scope of identfiers.}
const SCALE = 'Bass clef '; {This is a text constant.}
var JohnnyOneNote : char;

procedure Tune; {Note the identically named local identifiers.}
const SCALE = 'Treble clef ';
var JohnnyOneNote : char;
begin
	JohnnyOneNote := 'A';
	writeln (SCALE, JohnnyOneNote)
end; {Tune}

begin
	JohnnyOneNote := 'D';
	writeln (SCALE, JohnnyOneNote);
	Tune;
	writeln (SCALE, JohnnyOneNote)
end.
