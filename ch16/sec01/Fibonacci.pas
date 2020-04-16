Function Fibonacci(Which : integer) : integer;
Begin
  If (Witch=1) Or (Witch=2)
    Then Fibonacci := 1
  Else Fibonacci := Fibonacci(Which-1) + Fibonacci(Which-2)
End; {Fibonacci}
