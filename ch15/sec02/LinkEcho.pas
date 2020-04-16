
Program LinkEcho(input, output);
{Stores positive numbers in a linked list, then echoes the sentinel and list.}

Type 
  NodePOINT = ^NodeTYPE;
  NodeTYPE  = Record
    Next : NodePOINT;
    Data : integer;
  End;

Var 
  FirstNodePtr, CurrentNodePtr : NodePOINT;
  TheNumber                    : integer;

Begin
  new(FirstNodePtr);
  FirstNodePtr^.Next := Nil;
  CurrentNodePtr     := FirstNodePtr;
 {We've initialized the list by creating the first node.}
  writeln('Please enter numbers to echo (negative sentinel).');
  read(TheNumber);
  While TheNumber >= 0 Do
    Begin
  {Since the number wasn't a sentinel, we have to add a node...}
      new(CurrentNodePtr^.Next);
  {...then advance the CurrentNodePtr pointer...}
      CurrentNodePtr := CurrentNodePtr^.Next;
  {...Then initialize its Next field...}
      CurrentNodePtr^.Next := Nil;
  {...then save the new number...}
      CurrentNodePtr^.Data := TheNumber;
  {...and finally get the next number.}
      read(TheNumber);
    End; {while}


{Postcondition: FirstNodePtr^.Next and CurrentNodePtr hold the first and last
	 stored values.  CurrentNodePtr^.Next is nil, and we've read the sentinel.}
  readln;
  write(TheNumber: 4);            {Print the sentinel.}
  CurrentNodePtr := FirstNodePtr; {Its data field is empty.}
  While CurrentNodePtr^.Next <> Nil Do
    Begin
      CurrentNodePtr := CurrentNodePtr^.Next;
      write(CurrentNodePtr^.Data: 4);
    End; {while}
  {Postcondition: We've printed every defined Data field in the list.}
  writeln;
End. {LinkEcho}
