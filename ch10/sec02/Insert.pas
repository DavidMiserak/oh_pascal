procedure Insert(var Data PhraseTYPE);
	{Uses the insert sort algorithm to order an array of characters.}
	var Newest, Current, Comparisons, Swaps: integer;
	    NewItem: char;
	    Seeking: boolean;
	begin
		Comparisons := 0;
		Swaps := 0;
		for Newest := 2 to MAX do begin
			Seeking := TRUE;
			Current := Newest;
			NewItem := Data[Newest];
			while Seeking do begin
				Comparisons := Comparisons + 1;
				if (Data[Current - 1] < NewItem) then begin
					Data[Current] := Data[Current - 1]; {Slide a value to the right.}
					Swaps := Swaps + 1;
					Current := Current - 1;
					Seeking := Current > 1;
				end
				else begin Seeking := FALSE end; {if}
			end; {while}
			{Postcondition: NewItem belongs in Data[Current]}
			Data[Current] := NewItem;
		end; {Newest for}
		write(Comparisons: 1); write(' comparisons, ');
		write(Swaps: 1); writeln(' swaps.');
	end; {Insert}