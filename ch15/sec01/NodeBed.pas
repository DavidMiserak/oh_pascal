
Program NodeBed(input, output);
{A test bed for your basic node.}

Type 
  NodePTR  = ^NodeTYPE;
  NodeTYPE = Record
    Letter : char;
    Next   : NodePTR;
  End;

Var 
  FirstPtr, CurrentPtr : NodePTR;

Begin
  new (FirstPtr);
  CurrentPtr       := FirstPtr;
  FirstPtr^.Letter := 'A';
  new(FirstPtr^.Next);
  CurrentPtr         := CurrentPtr^.Next;
  CurrentPtr^.Letter := 'B';
  CurrentPtr^.Next   := Nil;
End. {NodeBed}
