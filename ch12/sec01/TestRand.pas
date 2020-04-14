program TestRand (input, output);
{Checks the distribution of the Random function's output.}

const NUMBERofTrials = 10000;

type Data = array [1 .. 10] of integer;

var Counter, Temp: integer;
    TestBed: Data;

function Random(Seed: integer): real;
	{Returns a real in the range 0.0 .. 0.999...}
	{Returns a pseudorandom number such that 0.0 <= Random < 1.0.}
	const MODULUS = 2027; {Values suggested by Warford.}
	      MULTIPLIER = 15;

	begin
		Seed := (Seed * MULTIPLIER) mod MODULUS;
		Random := Seed / MODULUS
	end; {Random}

begin {main program}
	for Counter := 1 to 10 do begin
		TestBed[Counter] := 0;
	end; {The output counter is initialized.}
	for Counter := 1 to NUMBERofTrials do begin
		Temp := trunc(1 + ((Random(Counter)) * 10)); {i.e. 1 .. 10}
		TestBed[Temp] := TestBed[Temp] + 1;
	end; {We've counted appearances of 10,000 numbers.}
	writeln('Random test distribution:');
	for Counter := 1 to 10 do begin
		write(Counter: 3);
		write('''s')
	end; {The heading is printed.}
	writeln;
	for Counter := 1 to 10 do begin
		write(TestBed[Counter]: 5)
	end; {The counts are printed.}
	writeln
end. {TestRand}
