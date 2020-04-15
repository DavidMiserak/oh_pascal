procedure InOrder(CurrentWord: WordPOINT);
{Prints the nodes of a non-nil alphabetically ordered binary tree in order.}

begin
   if CurrentWord^.Before <> nil then begin
      InOrder(CurrentWord^.Before)
   end;
   writeln(CurrentWord^.Word);
   if CurrentWord^.After <> nil then begin
      InOrder(CurrentWord^.After)
   end
end; {InOrder}
