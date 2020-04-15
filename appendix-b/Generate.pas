function Generate(var Seed: integer): real;
{Algorithm 2 from CACM, pg. 1195, col. 31, no. 10, (October, 1988).}

const
   MODULUS    = 2147483647;
   MULTIPLIER = 16807;
   QUOTIENT   = 127773; {MODULUS div MULTIPLIER}
   REMAINDER  = 2836;   {MODULUS mod MULTIPLIER}

var Low, Hi, Test: integer;

begin
   {First, perform the calulation while avoiding overflow.}
   Hi := Seed div QUOTIENT;
   Low := Seed mod QUOTIENT;
   Test := (MULTIPLIER * Low)-(REMAINDER * Hi);

   {Second, update the seed from next time.}
   if Test > 0
      then Seed := Test
   else Seed := Test + MODULUS;

   {Third, return a value in the range 0.0 < Generates <= 1.0}
   Generate := Seed / MODULUS;
end; {Generate}
