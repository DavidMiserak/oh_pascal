program Permute(input, output);
{Prints every permutation of an input string.}

const MAX = 10;

type StringTYPE = packed array [1..MAX] of char;

var TheString : StringTYPE;
    Length    : integer;

procedure PrintPermutations(TheString : StringTYPE; Current, Length : integer);
{The recursive procedure.}
var  i : integer;
    ch : char;

begin
   if Current < Length then begin
      for i := to Length do begin
	 Ch := TheString[Current]; {Swap the current component.}
	 TheString[Current] := TheString[i];
	 TheString[i] := Ch;
	 PrintPermutations(TheString, Current+1, Length);
      end {for}
   end {if}
   else begin
      for i := 1 to Length do write(TheString[i]);
      writeln
   end {else}
end; {PrintPermutations}

begin
   write('Give me a short string to permute: ');
   Length := 0;
   while not eoln and (Length < MAX) do begin
      Length := Length + 1;
      read(TheString[Length])
   end;
   readln; {Dump any remaining characters.}
   PrintPermutations(TheString, 1, Length)
end. {Permute}
