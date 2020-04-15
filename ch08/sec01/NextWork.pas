Function NextWork (Today: DayTYPE): WEEKday;
{Represents the first working day to follow Today.}

Const 
  FIRSTworkDay = Monday;
  LASTworkDay  = Friday;

Begin
  If (Today >= FIRSTworkDay) And (Today < LASTworkDay) Then
    Begin
      Today    := succ(Today); {Increment Today.}
      NextWork := Today;
    End
  Else
    Begin
      NextWork := FIRSTworkDay
    End
{The assigned values have to be in the WEEKday subrange.}
End; {NextWork}
