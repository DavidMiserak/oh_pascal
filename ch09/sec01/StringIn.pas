program StringIn (input, output);
{Demonstates Standard Pascal string input.}

const LIMIT = 15; {The maximum string length.}
      BLANK = '               '; {Fifteen blanks.}

type StringType = packed Array [1 .. LIMIT] of char;

var Element: StringType;
    Current: integer;

begin
	Element := BLANK; {Initalize the string array.}
	Current := 0;
	writeln('Please typoe in the name of your favorite element.');
	while (input ^ > ' ') and (Current <= LIMIT) do begin
		Current := Current + 1;
		read(Element[Current]);
	end; {while}
	write('Few elements are as laid back as ');
	writeln(Element);
end. {StringIn}