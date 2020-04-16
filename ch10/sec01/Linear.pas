Procedure Linear(Data : PhraseTYPE; Letter : char; Var Position : integer);
 {Linear search for Letter. Return negative Position if not found.}
Begin
  Position := 1;
  While (Data[Position] < Letter) And (Position < MAX) Do
    Begin
      Position := Position + 1;
    End;
  {Postcondition: If Data[Position] isn't Letter, then no component is.}
  If Data[Position] <> Letter Then
    Begin
      Position := -1;
    End
End; {Linear}
