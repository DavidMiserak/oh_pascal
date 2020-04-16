Procedure InspectTree(CurrentPtr : NodePOINT);
{Visits every node of a non-empty binary tree.}

Begin
  If CurrentPtr^.LeftPtr <> Nil Then
    Begin
      InspectTree(CurrentPtr^.LeftPtr);
    End;

  If CurrentPtr^.RightPtr <> Nil Then
    Begin
      InspectTree(CurrentPtr^.RightPtr);
    End;

  write(CurrentPtr^.Data);
End; {InspectTree}
