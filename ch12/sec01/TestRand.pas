
Program TestRand(input, output);
{Checks the distribution of the Random function's output.}

Const 
  NUMBERofTrials = 10000;

Type 
  Data = array [1 .. 10] Of integer;

Var 
  Counter, Temp : integer;
  TestBed       : Data;

Function Random(Seed : integer) : real;
 {Returns a real in the range 0.0 .. 0.999...}
 {Returns a pseudorandom number such that 0.0 <= Random < 1.0.}

Const 
  MODULUS = 2027; {Values suggested by Warford.}
  MULTIPLIER = 15;

Begin
  Seed   := (Seed * MULTIPLIER) Mod MODULUS;
  Random := Seed / MODULUS
End; {Random}

Begin {main program}
  For Counter := 1 To 10 Do
    Begin
      TestBed[Counter] := 0;
    End; {The output counter is initialized.}
  For Counter := 1 To NUMBERofTrials Do
    Begin
      Temp := trunc(1 + ((Random(Counter)) * 10)); {i.e. 1 .. 10}
      TestBed[Temp] := TestBed[Temp] + 1;
    End; {We've counted appearances of 10,000 numbers.}
  writeln('Random test distribution:');
  For Counter := 1 To 10 Do
    Begin
      write(Counter: 3);
      write('''s')
    End; {The heading is printed.}
  writeln;
  For Counter := 1 To 10 Do
    Begin
      write(TestBed[Counter]: 5)
    End; {The counts are printed.}
  writeln
End. {TestRand}
