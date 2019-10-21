procedure Bubble(var Data PhraseTYPE);
	{Uses the bubble sort algorithm to order an array of characters.}
	var Last, Current, Comparisons, Swaps: integer;
	    Temp: char;
	begin
		Comparisons := 0;
		Swaps := 0;
		for Last := MAX downto 2 do begin
			for Current := 1 to Last - 1 do begin
				Comparisons := Comparisons + 1;
				if Data[Current] < Data[Current + 1] then begin
					Swaps := Swaps + 1;
					Temp := Data[Current];
					Data[Current] := Data[Current + 1];
					Data[Current + 1] := Temp;
				end {if}
			end {Current for}
			{Postcondition: Components Last through the end of the array are ordered.}
		end; {Last for}
		write(Comparisons: 1); write(' comparisons, ');
		write(Swaps: 1); writeln(' swaps.');
	end; {Bubble}