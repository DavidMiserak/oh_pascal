Procedure Insert(Var Data : PhraseTYPE);
 {Uses the insert sort algorithm to order an array of characters.}

Var 
  Newest, Current, Comparisons, Swaps : integer;
  NewItem                             : char;
  Seeking                             : boolean;

Begin
  Comparisons := 0;
  Swaps := 0;
  For Newest := 2 To MAX Do
    Begin
      Seeking := TRUE;
      Current := Newest;
      NewItem := Data[Newest];
      While Seeking Do
        Begin
          Comparisons := Comparisons + 1;
          If (Data[Current - 1] < NewItem) Then
            Begin
              Data[Current] := Data[Current - 1]; {Slide a value to the right.}
              Swaps         := Swaps + 1;
              Current       := Current - 1;
              Seeking       := Current > 1;
            End
          Else
            Begin
              Seeking := FALSE
            End; {if}
        End; {while}
   {Postcondition: NewItem belongs in Data[Current]}
      Data[Current] := NewItem;
    End; {Newest for}
  write(Comparisons: 1);
  write(' comparisons, ');
  write(Swaps: 1);
  writeln(' swaps.');
End; {Insert}
