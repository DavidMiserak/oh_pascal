program Appears (input, output);
{Uses an associative array to count word appearances.}
const MAXdata   = 500; {Number of different words.}
      MAXlength =  10; {Length of longest individual word.}

type
	StringTYPE = record
		Length: 0 .. MAXlength;
		Data: packed array [1 .. MAXlength] of char;
	end;
	EntryTYPE = record {one word}
		Info: StringTYPE;
		Count: integer;
	end;
	AssociativeTYPE = record
		Length: integer; {The number of different words.}
		List: array [1 .. MAXdata] of EntryTYPE;
	end;

var AllWords: AssociativeTYPE;
    OneWord: StringTYPE;
    Position, Count: integer;

{****************************************************************}
{I'll get the string-handling subprogram out of the way first.}
procedure ReadString(var Value: StringTYPE);
	{Read a full line. Return a zero-length string if the line is empty.}
	begin
		Value.Length := 0;
		while not eoln and (Value.Length < MAXlength) do begin
			Value.Length := Value.Length + 1;
			read(Value.Data[Value.Length]);
		end; {while}
		readln;
	end; {ReadString}

procedure WriteString (Value: StringTYPE);
	{Write the string contents of Value without a newline.}
	var i: integer;
	begin
		for i := 1 to Value.Length do write(Value.Data[i])
	end; {WriteString}

procedure Blank (var Value: StringTYPE);
	{Store null characters in the string.}
	var i: integer;
	begin
		Value.Length := 0;
		for i := 1 to MAXlength do Value.Data[i] := chr(0);
	end; {Blank}

function Equal(Value1, Value2: StringTYPE): boolean;
	{TRUE if the strings are equal in length and content.}
	var i: integer;
	begin
		if Value1.Length <> Value2.Length
			then begin Equal := FALSE end
			else begin
				i := 1;
				while (Value1.Data[i] = Value2.Data[i]) and (i < Value1.Length) do begin
					i := i + 1
				end;
				{Postcondition: if the current components are equal, the strings are too.}
				Equal := Value1.Data[i] = Value2.Data[i]
			end
	end; {Equal}

function Length (Value: StringTYPE): integer;
	{Represents the length of the stored string.}
	begin
		Length := Value.Length
	end; {Length}

{****************************************************************}
{Next, we'll take care of the AssociativeTYPE primitives.}
procedure LookUp (
		var Data: AssociativeTYPE; {The whole array.}
		Entry: StringTYPE;       {What we want.}
		var Position: integer    {Where it will be.}
	);
	{Looks up a string and makes an entry for it if it's absent.}
	begin
		with Data do begin
			List[Length + 1].Info := Entry;
			{Store it at the end to make the search easy.}
			Position := 1;
			while not Equal (List[Position].Info, Entry) do begin
				Position := Position + 1;
			end;
			{Postcondition: the word we want is in component Position.}
			if Position = Length + 1 then begin
				{We found it, but in the last slot, so it must be a new entry.}
				List[Position].Count := 0; {No previous instances of this work.}
				Length := Length + 1; {Lengthen the array of words.}
			end
			else begin {It's in component Position}
				Blank(List[Length + 1].Info); {Remove the word we stored.}
			end {if}
		end {with}
	end; {LookUp}

procedure Initialize (var Data: AssociativeTYPE);
	{Initializes the count of entries.}
	begin
		Data.Length := 0;
	end; {Initialize}

procedure Increment (var Data: AssociativeTYPE; Position: integer);
	{Add 1 to the count associated with Entry.}
	begin
		Data.List[Position].Count := Data.List[Position].Count + 1;
	end; {Increment}

function ReturnLength (Data: AssociativeTYPE): integer;
	{Represents the number of entries in Data}
	begin
		ReturnLength := Data.Length
	end; {ReturnLength}

function ReturnCount (Data: AssociativeTYPE; Position: integer): integer;
	{Represents the count associated with a particular entry.}
	begin
		ReturnCount := Data.List[Position].Count
	end; {ReturnCount}

procedure ReturnWord (
		Data: AssociativeTYPE; 
		Position: integer; 
		var AWord: StringTYPE
	);
	begin
		AWord := Data.List[Position].Info
	end; {ReturnWord}

begin {main program}
	Initialize(AllWords);
	writeln('Give me a file of words to count.');
	while not eof and (ReturnLength(AllWords) < MAXdata) do begin
		ReadString(OneWord);
		LookUp(AllWords, OneWord, Position);
		Increment(AllWords, Position); {We counted a word.}
	end; {while}
	{All the MAXlength-letter words were counted.}
	write(ReturnLength(AllWords): 1);
	writeln(' different words read. Number of appearances was...');
	for Count := 1 to ReturnLength(AllWords) do begin
		ReturnWord(AllWords, Count, OneWord);
		WriteString(OneWord);
		writeln(ReturnCount(AllWords, Count): 3)
	end
end. {Appears}