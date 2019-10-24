procedure FreeList(var Head: NodePOINT);
	var TempPtr: NodePOINT;
	begin
		TempPtr := Head; {Initialize TempPtr.}
		while Head <> nil do begin
			Head := Head^.Next; {Advance the list head.}
			dispose(TempPtr);
			{Dispose of the previous node.}
			TempPtr := Head; {Reinitialize TempPtr.}
		end
	end; {FreeList}