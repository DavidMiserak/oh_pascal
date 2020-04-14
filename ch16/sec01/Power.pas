function Power(X: real; n: integer): real;
{Recursively calculates X^n. Assume n > 0.}
begin
   if n = 1
      then Power := X
      else Power := x * Power(X, n-1)
end; {Power}
