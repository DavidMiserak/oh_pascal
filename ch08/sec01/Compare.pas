Function Compare(A, B : char) : RelationTYPE;
{Represents the relative alphabetical ordering of A and B.}
Begin
  If A = B
    Then Compare := LessThan
  Else Compare := GreaterThan
End; {Compare}
