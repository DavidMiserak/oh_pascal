
Program Permute(input, output);
{Prints every permutation of an input string.}

Const 
  MAX = 10;

Type 
  StringTYPE = packed array [1..MAX] Of char;

Var 
  TheString : StringTYPE;
  Length    : integer;

Procedure PrintPermutations(TheString : StringTYPE; Current, Length : integer);
{The recursive procedure.}

Var 
  i  : integer;
  ch : char;

Begin
  If Current < Length Then
    Begin
      For i := To Length Do
        Begin
          Ch := TheString[Current]; {Swap the current component.}
          TheString[Current] := TheString[i];
          TheString[i] := Ch;
          PrintPermutations(TheString, Current+1, Length);
        End {for}
    End {if}
  Else
    Begin
      For i := 1 To Length Do
        write(TheString[i]);
      writeln
    End {else}
End; {PrintPermutations}

Begin
  write('Give me a short string to permute: ');
  Length := 0;
  While Not eoln And (Length < MAX) Do
    Begin
      Length := Length + 1;
      read(TheString[Length])
    End;
  readln; {Dump any remaining characters.}
  PrintPermutations(TheString, 1, Length)
End. {Permute}
