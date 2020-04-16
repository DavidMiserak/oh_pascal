Procedure Bubble(Var Data : PhraseTYPE);
 {Uses the bubble sort algorithm to order an array of characters.}

Var 
  Last, Current, Comparisons, Swaps : integer;
  Temp                              : char;

Begin
  Comparisons := 0;
  Swaps := 0;
  For Last := MAX Downto 2 Do
    Begin
      For Current := 1 To Last - 1 Do
        Begin
          Comparisons := Comparisons + 1;
          If Data[Current] < Data[Current + 1] Then
            Begin
              Swaps := Swaps + 1;
              Temp := Data[Current];
              Data[Current] := Data[Current + 1];
              Data[Current + 1] := Temp;
            End {if}
        End {Current for}
   {Postcondition: Components Last through the end of the array are ordered.}
    End; {Last for}
  write(Comparisons: 1);
  write(' comparisons, ');
  write(Swaps: 1);
  writeln(' swaps.');
End; {Bubble}
