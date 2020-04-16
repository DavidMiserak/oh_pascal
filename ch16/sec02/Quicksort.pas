Procedure Quicksort(Start, Finish : integer;
                    Var Data      : TheArrayTYPE);
{ Recursively sort array Data, with counds Start and Finish, using Quicksort}

Var 
  StarterValue, Left, Right, Temp : integer;

Begin
  Left         := Start;
  Right        := Finish;
  StarterValue := Data[(Start+Finish) Div 2]; {Pick a starter.}
  Repeat
    While Data[Left] < StarterValue Do
      Begin
        Left := Left+1;
      End;
      {Postcondition: We've found a smaller value on the left.}

    While StarterValue < Data[Right] Do
      Begin
        Right := Right-1;
      End;
      {Postcondition: We've found a bigger value on the right.}

    If Left <= Right Then
      Begin                         {If we haven't gone too far...}
        Temp        := Data[Left];  {...switch them}
        Data[Left]  := Data[Right];
        Data[Right] := Temp;
        Left        := Left+1;      {Move the bounds}
        Right       := Right-1;
      End {then}
  Until Right <= Left;
   {Postcondition: The array is 'sort of sorted' about StarterValue.}

  If Start < Right Then Quicksort(Start, Right, Data);
  If Left < Finish Then Quicksort(Left, Finish, Data);
End; {Quicksort}
