Function Power(X : real; n : integer) : real;
{Recursively calculates X^n. Assume n > 0.}
Begin
  If n = 1
    Then Power := X
  Else Power := x * Power(X, n-1)
End; {Power}
