procedure Binary (Data: PhraseTYPE; Letter: char; var Position: integer);
	{Binary search for Letter. Return Position = -1 if not found.}
	var Middle, Lower, Upper: integer;
	begin
		Lower := 1;
		Upper := MAX;
		repeat
			Middle := (Lower + Upper) div 2;
			if Letter < Data[Middle]
				then Upper := Middle - 1
				else Lower := Middle + 1
		until (Data[Middle] = Letter) or (Lower > Upper);
		{Postcondition: If Data[Middle] isn't Letter, no component is.}
		if Data[Middle] = Letter
			then Position := Middle
			else Position := -1
	end; {Binary}