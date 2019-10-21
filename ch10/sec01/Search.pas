procedure Search (Data: PhraseTYPE; Letter: char; var Position: integer);
	{Search procedure for an unordered array. Position is 1 for absent Letter.}
	var i: integer; {the current array component}
	begin
		i := 1; {Data's bounds are 1 .. MAX.}
		while (Data[i] <> Letter) and (i < MAX) do begin
			i := i + 1;
		end; {while}
		{Postcondition: If Data[i] isn't Letter, then no component is.}
		if Data[i] = Letter
			then begin Position := i end
			else begin Position := -1 end
	end; {Search}