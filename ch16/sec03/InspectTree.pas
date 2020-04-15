procedure InspectTree(CurrentPtr: NodePOINT);
{Visits every node of a non-empty binary tree.}

begin
   if CurrentPtr^.LeftPtr <> nil then begin
      InspectTree(CurrentPtr^.LeftPtr);
   end;

   if CurrentPtr^.RightPtr <> nil then begin
      InspectTree(CurrentPtr^.RightPtr);
   end;

   write(CurrentPtr^.Data);
end; {InspectTree}
