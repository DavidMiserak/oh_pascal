Procedure InOrder(CurrentWord : WordPOINT);
{Prints the nodes of a non-nil alphabetically ordered binary tree in order.}

Begin
  If CurrentWord^.Before <> Nil Then
    Begin
      InOrder(CurrentWord^.Before)
    End;
  writeln(CurrentWord^.Word);
  If CurrentWord^.After <> Nil Then
    Begin
      InOrder(CurrentWord^.After)
    End
End; {InOrder}
