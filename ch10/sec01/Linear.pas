procedure Linear (Data: PhraseTYPE; Letter: char; var Position: integer);
	{Linear search for Letter. Return negative Position if not found.}
	begin
		Position := 1;
		while (Data[Position] < Letter) and (Position < MAX) do begin
			Position := Position + 1;
		end;
		{Postcondition: If Data[Position] isn't Letter, then no component is.}
		if Data[Position] <> Letter then begin
			Position := -1;
		end
	end; {Linear}