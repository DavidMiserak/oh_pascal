procedure Quicksort(Start, Finish: integer;
		    var Data: TheArrayTYPE);
{ Recursively sort array Data, with counds Start and Finish, using Quicksort}

var StarterValue, Left, Right, Temp: integer;

begin
   Left := Start;
   Right := Finish;
   StarterValue := Data[(Start+Finish) div 2]; {Pick a starter.}
   repeat
      while Data[Left] < StarterValue do begin
	 Left := Left+1;
      end;
      {Postcondition: We've found a smaller value on the left.}

      while StarterValue < Data[Right] do begin
	 Right := Right-1;
      end;
      {Postcondition: We've found a bigger value on the right.}

      if Left <= Right then begin {If we haven't gone too far...}
	 Temp := Data[Left];      {...switch them}
	 Data[Left] := Data[Right];
	 Data[Right] := Temp;
	 Left := Left+1; {Move the bounds}
	 Right := Right-1;
      end {then}
   until Right <= Left;
   {Postcondition: The array is 'sort of sorted' about StarterValue.}

   if Start < Right then Quicksort(Start, Right, Data);
   if Left < Finish then Quicksort(Left, Finish, Data);
end; {Quicksort}
