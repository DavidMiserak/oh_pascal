Procedure ReadString(Var Value : StringTYPE);
 {Read a full line. Return a zero-length string if the line is empty.}
Begin
  Value.Length := 0;
  While Not eoln And (Value.Length < MAX) Do
    Begin
      Value.Length := Value.Length + 1;
      read(Value.Data[Value.Length]);
    End; {while}
  readln;
End; {ReadString}
