Function Generate(Var Seed : integer) : real;
{Algorithm 2 from CACM, pg. 1195, col. 31, no. 10, (October, 1988).}

Const 
  MODULUS    = 2147483647;
  MULTIPLIER = 16807;
  QUOTIENT   = 127773; {MODULUS div MULTIPLIER}
  REMAINDER  = 2836;   {MODULUS mod MULTIPLIER}

Var 
  Low, Hi, Test: integer;

Begin
   {First, perform the calulation while avoiding overflow.}
  Hi   := Seed Div QUOTIENT;
  Low  := Seed Mod QUOTIENT;
  Test := (MULTIPLIER * Low)-(REMAINDER * Hi);

   {Second, update the seed from next time.}
  If Test > 0
    Then Seed := Test
  Else Seed := Test + MODULUS;

   {Third, return a value in the range 0.0 < Generates <= 1.0}
  Generate := Seed / MODULUS;
End; {Generate}
