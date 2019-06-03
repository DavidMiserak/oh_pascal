program SumSubArrays (output);
{Stores the sums of array subsequences.}
type Vector = array [1..10] of integer;
var First, Second : Vector;
    i : integer;
procedure SubSums (Data : Vector; var Results: Vector);
{Stores partial sums of Data into Results}
var SubLength, Current, TempSum: integer;
begin
	for SubLength := 1 to 10 do begin
		TempSum := 0;
		for Current := 1 to SubLength do
			TempSum := TempSum + Data[Current];
		Results[SubLength] := TempSum;
	end; {for}
end; {SubSums}
begin
	for i := 1 to 10 do First[i] := i; {Initialize First to 1, 2, 3, etc}
	SubSums(First, Second);
	for i := 1 to 10 do write(First[i]:3); {Print the stored values}
	writeln;
	for i := 1 to 10 do write(Second[i]:3); {Print the stored sums}
	writeln
end. {SumSubArrays}
