Procedure Select(Var Data : PhraseTYPE);
 {Uses the selection sort algorithm to order an array of characters.}

Var
  First, Current, Largest, Comparisons, Swaps : integer;
  Temp                                        : char;
Begin
  Comparisons := 0;
  Swaps       := 0;
  For First := 1 To MAX - 1 Do
    Begin
      Largest := First;
      For Current := First + 1 To MAX Do
        Begin
    {Don't bother comparing the first component to itself.}
          Comparisons := Comparisons + 1;
          If Data[Current] > Data[Largest] Then
            Begin
              Largest := Current;
            End
        End; {Current for}
   {Postcondition: Largest subscripts the largest item from First .. MAX.}
      If Largest <> First Then
        Begin {We have to make a swap.}
          Swaps         := Swaps + 1;
          Temp          := Data[Largest];
          Data[Largest] := Data[First]; {Make the swap.}
          Data[First]   := Temp;
        End {if}
   {Postcondition: 1 through First subscript the array's largest value.}
    End; {First for}
  write(Comparisons: 1);
  write(' comparisons, ');
  write(Swaps: 1);
  writeln(' swaps.');
End; {Select}
