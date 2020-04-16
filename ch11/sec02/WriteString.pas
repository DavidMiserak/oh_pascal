Procedure WriteString(Value : StringTYPE);
 {Write the string contents of Value without a newline.}

Var
  i : integer;

Begin
  For i := 1 To Value.Length Do
    write(Value.Data[i])
End; {WriteString}
