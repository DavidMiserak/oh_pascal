procedure Select(var Data PhraseTYPE);
	{Uses the selection sort algorithm to order an array of characters.}
	var First, Current, Largest, Comparisons, Swaps: integer;
	    Temp: char;
	begin
		Comparisons := 0;
		Swaps := 0;
		for First := 1 to MAX - 1 do begin
			Largest := First;
			for Current := First + 1 to MAX do begin
				{Don't bother comparing the first component to itself.}
				Comparisons := Comparisons + 1;
				if Data[Current] > Data[Largest] then begin
					Largest := Current;
				end
			end; {Current for}
			{Postcondition: Largest subscripts the largest item from First .. MAX.}
			if Largest <> First then begin {We have to make a swap.}
				Swaps := Swaps + 1;
				Temp := Data[Largest];
				Data[Largest] := Data[First]; {Make the swap.}
				Data[First] := Temp;
			end {if}
			{Postcondition: 1 through First subscript the array's largest value.}
		end; {First for}
		write(Comparisons: 1); write(' comparisons, ');
		write(Swaps: 1); writeln(' swaps.');
	end; {Select}