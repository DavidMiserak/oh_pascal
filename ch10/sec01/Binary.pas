Procedure Binary(Data : PhraseTYPE; Letter : char; Var Position : integer);
 {Binary search for Letter. Return Position = -1 if not found.}

Var 
  Middle, Lower, Upper : integer;

Begin
  Lower := 1;
  Upper := MAX;
  Repeat
    Middle := (Lower + Upper) Div 2;
    If Letter < Data[Middle]
      Then Upper := Middle - 1
    Else Lower := Middle + 1
  Until (Data[Middle] = Letter) Or (Lower > Upper);
  {Postcondition: If Data[Middle] isn't Letter, no component is.}
  If Data[Middle] = Letter
    Then Position := Middle
  Else Position := -1
End; {Binary}
