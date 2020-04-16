Function Random(Seed : integer) : real;
{Returns a psudorandom number such that 0.0 <= Random < 1.0.}

Const 
  MODULUS    = 2027; {Values suggested by Warford.}
  MULTIPLIER = 15;

Begin
  Seed   := (Seed*MULTIPLIER) Mod MODULUS;
  Random := Seed/MODULUS
End; {Random}
