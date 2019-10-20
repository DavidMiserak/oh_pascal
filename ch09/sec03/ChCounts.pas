program ChCount (input, output);
{Count input characters, print relative frequency of lower-case letters.}

type CountTYPE = array[char] of integer;

var CountArray: CountTYPE; {CountArray holds the character counts.}
    Ch: char;             {Ch holds the current input character.}
    Total,                {Total counts the total number of letters.}
    LineCount: integer;   {LineCount helps produce neat output.}

procedure Initialize (var CountArray: CountTYPE);
{Initalized the CountTYPE structure.}
var Position: char;
begin
	for Position := chr(0) to chr(127) do begin
		CountArray[Position] := 0;
	end;
end; {Initialize}

procedure CountData(var CountArray: CountTYPE; Ch: char);
{Count the appearance of a character.}
begin
	CountArray[Ch] := CountArray[Ch] + 1;
end; {CountData}

function CountWas(CountArray: CountTYPE; Ch: char): integer;
{Returns the number of times Ch was counted.}
begin
	CountWas := CountArray[Ch];
end; {CountWas}

begin {ChCount}
	{the initialization segment}
	writeln('Counting letter frequencies...');
	Total := 0;
	Initialize(CountArray);

	{The processing segment}
	while not eof do begin
	{Count appearances of all available characters.}
		read(Ch);
		CountData(CountArray, Ch);
		Total := Total + 1;
	end; {while}
	{We know individual and overall character counts.}

	{the results segment}
	writeln('Lower-case frequencies (among all input characters):');
	LineCount := 1;
	for Ch := 'a' to 'z' do begin {Print the output table.}
		write(Ch);
		write(' = ');
		write (100.0 * (CountWas(CountArray, Ch)/Total): 4:2);
		write('% ');
		if (LineCount mod 5) = 0 then begin writeln end;
		LineCount := LineCount + 1; {Newline after every fifth character.}
	end; {for}
	writeln;
end. {ChCount}