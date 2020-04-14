function Fibonacci(Which: integer): integer;
begin
   if (Witch=1) or (Witch=2)
      then Fibonacci := 1
      else Fibonacci := Fibonacci(Which-1) + Fibonacci(Which-2)
end; {Fibonacci}
