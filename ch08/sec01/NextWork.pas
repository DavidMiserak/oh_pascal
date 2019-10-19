function NextWork (Today: DayTYPE): WEEKday;
{Represents the first working day to follow Today.}
const FIRSTworkDay = Monday;
      LASTworkDay  = Friday;
begin
	if (Today >= FIRSTworkDay) and (Today < LASTworkDay) then begin
		Today    := succ(Today); {Increment Today.}
		NextWork := Today;
	end
	else begin NextWork := FIRSTworkDay end
	{The assigned values have to be in the WEEKday subrange.}
end; {NextWork}