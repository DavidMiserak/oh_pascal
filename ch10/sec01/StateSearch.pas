Procedure StateSearch(Data : PhraseTYPE; Letter : char; Var Position : integer);
 {State-oriented search of an unordered array. Position is -1 for absent Letter.}

Type 
  StateTYPE = (found, absent, searching);

Var 
  State : StateTYPE;
  i     : integer;

Begin
  i := 1; {Data's bounds are 1 .. MAX.}
  Repeat {until we're not searching anymore}
    If (i > MAX) {Why is this state set first?}
      Then State := absent;
    Else If Data[i] = Letter {So we don't bomb out here.}
           Then State := found
    Else
      Begin
        i := i + 1;
        State := searching;
      End; {if}
  Until State <> searching;
  {Postcondition: if Letter was there, State = Found and Data[i] = Letter.}
  Case State Of 
    found : Position := i;
    absent: Position := -1;
  End; {case}
End; {StateSearch}
