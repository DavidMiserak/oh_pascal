Procedure Search(Data : PhraseTYPE; Letter : char; Var Position : integer);
 {Search procedure for an unordered array. Position is 1 for absent Letter.}

Var
  i : integer; {the current array component}

Begin
  i := 1; {Data's bounds are 1 .. MAX.}
  While (Data[i] <> Letter) And (i < MAX) Do
    Begin
      i := i + 1;
    End; {while}
  {Postcondition: If Data[i] isn't Letter, then no component is.}
  If Data[i] = Letter
    Then
    Begin
      Position := i
    End
  Else
    Begin
      Position := -1
    End
End; {Search}
