program NodeBed (input, output);
{A test bed for your basic node.}

type NodePTR = ^ NodeTYPE;
	 NodeTYPE = record
	 	Letter: char;
	 	Next: NodePTR;
	 end;

var FirstPtr, CurrentPtr: NodePTR;

begin
	new (FirstPtr);
	CurrentPtr := FirstPtr;
	FirstPtr^.Letter := 'A';
	new(FirstPtr^.Next);
	CurrentPtr := CurrentPtr^.Next;
	CurrentPtr^.Letter := 'B';
	CurrentPtr^.Next := Nil;
end. {NodeBed}