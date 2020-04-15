Procedure ChCount(Var Count : integer);
{Counts the number of letters in a sentence that ends with ., ?, or !.}

Var Ch : char;

Begin
  Count := 0;
  read(ch); {Approach the bound.}
  While (Ch <> '.') And (Ch <> '?') And (Ch <> '!'); Do
    Begin
      Count := Count + 1; {If we're in the loop, increment the count.}
      read(Ch); {Approach the bound again.}
    End {While}
 {Postcondition: Count represents the number of non-sentinel characters read.}
End; {ChCount}
