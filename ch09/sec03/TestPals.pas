program TestPals (input, output);
{Decides if the user has typed in a palindrome}

const MAX = 80; {Longest allowed input string.}

type StringTYPE = packed array [1 .. MAX] of char;

var Phrase: StringTYPE;
    Length: integer;

procedure ReadThePhrase (var Phrase: StringTYPE; var Last: integer);
{Read the phrase and return it's length}
begin
	Last := 0;
	while not eoln and (Last < MAX) do begin
		Last := Last + 1;
		read(Phrase[Last]);
	end; {while}
	{Postcondition: Phrase[1] .. Phrase[Last] holds the phrase.}
	readln;
	{Get rid of end-of-line.}
end; {ReadThePhrase}

function Palindrome (var Phrase: StringTYPE; var Last: integer): boolean;
{Return TRUE if phrase holds a palindrom. Dues NOT error-check blank lines.}

var First: integer;

begin
	First := 1;
	while ((First + 1) < Last) and (Phrase[First] = Phrase[Last]) do begin
		Last := Last - 1; {Move the subscripts closer together.}
		First := First + 1;
	end; {while}
	{Postcondition: We've inspected the whole phrase of found a mismatch.}
	Palindrome := (Phrase[First] = Phrase[Last]);
end; {Palindrome}

procedure FixThePhrase (var Scrunch: StringTYPE; var Last: integer);
{Capitalized the phrase, removes spaces and punctuation.}

var Current, i: integer;

begin
	Current := 1;
	while Current <= Last do begin
		{Precondition: Scrunch[Current] .. Scrunch[Last] is unknown}
		if Scrunch[Current] in ['a' .. 'z'] then begin
			Scrunch[Current] := chr(ord(Scrunch[Current]) - ord('a') + ord('A'));
		end; {if}
		if Scrunch[Current] in ['A' .. 'Z'] then begin
			Current := Current + 1;
			{The stored phrase is one letter longer.}
		end
		else begin
			for i := Current + 1 to Last do begin
				Scrunch[i-1] := Scrunch[i]
			end; {for}
			Last := Last - 1;
		end; {else}
	end; {while}
	{Postcondition: Scrunch[1] .. Scrunch[Last] are capitalized letters.}
end; {FixThePhrase}

begin {TestPals}
	writeln('Ty[e in a palindrome for me to check ("yo" to quit).');
	repeat
		ReadThePhrase(Phrase, Length);
		FixThePhrase(Phrase, Length);
		if Palindrome (Phrase, Length)
			then begin writeln('It was a palindrome.') end
			else begin writeln('It wasn''t a palindrome.') end
		until (Phrase[1] in ['y','Y']) and (Phrase[2] in ['o','O']);
end. {TestPals}