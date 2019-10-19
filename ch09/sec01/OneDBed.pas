program OneDBed (input, output);
{A test bed program for one-demensional arrays.}

const SHORTmax = 5;
      LONGmax = 10;

type ShortTYPE = array [1 .. SHORTmax] of integer;
     LongTYPE = array [1 .. LONGmax] of integer;

var Short  : ShortTYPE;
    Long   : LongTYPE;
    Current: integer;

begin
	for Current := 1 to SHORTmax do begin
		Short[(SHORTmax - Current) + 1] := Current;
	end; {Short holds numbers in reverse.}
	for Current := 1 to LONGmax div 2 do begin
		Long[Current] := Short[Current];
		Long[Current + (LONGmax div 2)] := Short[Current];
	end; {Long has the reversed numbers twice.}
end.{OneDBed}