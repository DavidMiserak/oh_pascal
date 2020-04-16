Function Equal(Value1, Value2 : StringTYPE) : boolean;
 {TRUE if the strings are equal in length and content.}

Var 
  i : integer;

Begin
  If Value1.Length <> Value2.Length
    Then
    Begin
      Equal := FALSE
    End
  Else
    Begin
      i := 1;
      While (Value1.Data[i] = Value2.Data[i]) And (i < Value1.Length) Do
        Begin
          i := i + 1
        End
    {Postcondition: if the current components are equal, the strings are too.}
        Equal := Value1.Data[i] = Value2.Data[i]
    End;
End; {Equal}
