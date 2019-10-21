function Equal(Value1, Value2: StringTYPE): boolean;
	{TRUE if the strings are equal in length and content.}
	var i: integer;
	begin
		if Value1.Length <> Value2.Length
			then begin Equal := FALSE end
			else begin
				i := 1;
				while (Value1.Data[i] = Value2.Data[i]) and (i < Value1.Length) do begin
					i := i + 1
				end
				{Postcondition: if the current components are equal, the strings are too.}
				Equal := Value1.Data[i] = Value2.Data[i]
			end;
	end; {Equal}