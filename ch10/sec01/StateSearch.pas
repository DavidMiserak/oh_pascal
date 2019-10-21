procedure StateSearch (Data: PhraseTYPE; Letter: char; var Position: integer);
	{State-oriented search of an unordered array. Position is -1 for absent Letter.}
	type StateTYPE = (found, absent, searching);
	var State: StateTYPE;
	    i: integer;
	begin
		i := 1; {Data's bounds are 1 .. MAX.}
		repeat {until we're not searching anymore}
			if (i > MAX) {Why is this state set first?}
				then State := absent;
			else if Data[i] = Letter {So we don't bomb out here.}
				then State := found
			else begin
				i := i + 1;
				State := searching;
			end; {if}
		until State <> searching;
		{Postcondition: if Letter was there, State = Found and Data[i] = Letter.}
		case State of
			found : Position := i;
			absent: Position := -1;
		end; {case}
	end; {StateSearch}