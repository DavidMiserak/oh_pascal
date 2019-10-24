program LinkEcho (input, output);
{Stores positive numbers in a linked list, then echoes the sentinel and list.}

type NodePOINT = ^ NodeTYPE;
	 NodeTYPE = record
	 	Next: NodePOINT;
	 	Data: integer;
	 end;

var FirstNodePtr, CurrentNodePtr: NodePOINT;
    TheNumber: integer;

begin
	new(FirstNodePtr);
	FirstNodePtr^.Next := nil;
	CurrentNodePtr := FirstNodePtr;
	{We've initialized the list by creating the first node.}
	writeln('Please enter numbers to echo (negative sentinel).');
	read(TheNumber);
	while TheNumber >= 0 do begin
		{Since the number wasn't a sentinel, we have to add a node...}
		new(CurrentNodePtr^.Next);
		{...then advance the CurrentNodePtr pointer...}
		CurrentNodePtr := CurrentNodePtr^.Next;
		{...Then initialize its Next field...}
		CurrentNodePtr^.Next := nil;
		{...then save the new number...}
		CurrentNodePtr^.Data := TheNumber;
		{...and finally get the next number.}
		read(TheNumber);
	end; {while}
	{Postcondition: FirstNodePtr^.Next and CurrentNodePtr hold the first and last
	 stored values.  CurrentNodePtr^.Next is nil, and we've read the sentinel.}
	 readln;
	 write(TheNumber: 4);            {Print the sentinel.}
	 CurrentNodePtr := FirstNodePtr; {Its data field is empty.}
	 while CurrentNodePtr^.Next <> nil do begin
	 	CurrentNodePtr := CurrentNodePtr^.Next;
	 	write(CurrentNodePtr^.Data: 4);
	 end; {while}
	 {Postcondition: We've printed every defined Data field in the list.}
	 writeln;
end. {LinkEcho}    