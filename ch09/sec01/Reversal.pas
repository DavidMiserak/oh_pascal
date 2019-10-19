program Reversal (input, output);
{Reads a line of input, then prints it in reverse.}

const LIMIT = 80;

type ArrayTYPE = array[1 .. LIMIT] of char;

var Last, {the current sentence length}
    Current: integer; {the for loop's counter variable}
    Hold: ArrayTYPE;  {the array variable}

begin
	writeln('Type in a sentence that''s upto 80 letters long.');
	Last := 0;
	while not eoln and (Last < LIMIT) do begin
		Last := Last + 1;
		read(Hold[Last]);
	end; {while}
	{Postcondition: Hold[1] throuch Hold[Last] holds the sentence.}
	readln;
	for Current := Last downto 1 do begin
		write(Hold[Current]);
	end; {for}
	writeln;
	{We've printed them in reverse order.}
end. {Reversal}