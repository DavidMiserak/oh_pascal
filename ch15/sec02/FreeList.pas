Procedure FreeList(Var Head : NodePOINT);

Var 
  TempPtr : NodePOINT;

Begin
  TempPtr := Head; {Initialize TempPtr.}
  While Head <> Nil Do
    Begin
      Head := Head^.Next; {Advance the list head.}
      dispose(TempPtr);
   {Dispose of the previous node.}
      TempPtr := Head; {Reinitialize TempPtr.}
    End
End; {FreeList}
