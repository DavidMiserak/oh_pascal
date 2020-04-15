function Random(car Seed: integer): real;
{Returns a psudorandom number such that 0.0 <= Random < 1.0.}

const
   MODULUS    = 2027; {Values suggested by Warford.}
   MULTIPLIER = 15;

begin
   Seed := (Seed*MULTIPLIER) mod MODULUS;
   Random := Seed/MODULUS
end; {Random}
