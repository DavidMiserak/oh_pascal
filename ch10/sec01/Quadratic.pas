Procedure Quadratic(Data : PhraseTYPE; Letter : char; Var Position : integer);
 {Quadratic search for Letter. Return negative Position if not found.}

Type 
  STATUS = (searching, found, absent, CloseEnough);

Var 
  State    : STATUS;
  JumpSize : integer;

Begin
  JumpSize := trunc(sqrt(MAX));
  Position := 1;
  State := searching; {Initialize the current State.}
  Repeat {by big jumps until we're CloseEnough}
    If (Position + JumpSize) > MAX
      Then State := CloseEnough;
    {Or we'd pass then end of the array.}
    Else If Data[Position + JumpSize] > Letter
           Then State := CloseEnough
    {Or we'd pass the sought value.}
    Else Position := Position + JumpSize
    {State remains unchanged.}
  Until State = CloseEnough;
  {Postcondition: if the letter is there, Data[Position] <= Letter.}
  State := searching; {Reset the current State.}
  Repeat {by Single steps until we're not searching}
    If Position > MAX Then State := absent
    Else If Data[Position] > Letter Then State := absent
    Else If Data[Position] = Letter Then State := found
    Else Position := Position + 1; {State is unchanged.}
  Until State <> searching;


{End of the single step loop.
		 Postcondition: If Letter is there, State = found and Data[Position] = Letter.}
  If State = absent Then
    Begin
      Position := -1
    End
End; {Quadratic}
