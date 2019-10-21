procedure Quadratic (Data: PhraseTYPE; Letter: char; var Position: integer);
	{Quadratic search for Letter. Return negative Position if not found.}
	
	type STATUS = (searching, found, absent, CloseEnough);

	var State: STATUS;
	    JumpSize: integer;

	begin
		JumpSize := trunc(sqrt(MAX));
		Position := 1;
		State := searching; {Initialize the current State.}
		repeat {by big jumps until we're CloseEnough}
			if (Position + JumpSize) > MAX
				then State := CloseEnough;
				{Or we'd pass then end of the array.}
			else if Data[Position + JumpSize] > Letter
				then State := CloseEnough
				{Or we'd pass the sought value.}
			else Position := Position + JumpSize
				{State remains unchanged.}
		until State = CloseEnough;
		{Postcondition: if the letter is there, Data[Position] <= Letter.}
		State := searching; {Reset the current State.}
		repeat {by Single steps until we're not searching}
			if Position > MAX then State := absent
			else if Data[Position] > Letter then State := absent
			else if Data[Position] = Letter then State := found
			else Position := Position + 1; {State is unchanged.}
		until State <> searching;
		{End of the single step loop.
		 Postcondition: If Letter is there, State = found and Data[Position] = Letter.}
		if State = absent then begin
			Position := -1
		end
	end; {Quadratic}