
Program Passage(input, output);
{Demonstrates some effects of passing a pointer as a value parameter.}

Type 
  NodePOINT = ^NodeTYPE;
  NodeTYPE  = Record
    Next: NodePOINT;
    Data: char;
  End;

Var 
  CurrentPtr : NodePOINT;

Procedure Change(TempPtr : NodePOINT);
Begin
  TempPtr^.Data := 'C'    ; {Which of these are}
  TempPtr       := TempPtr^.Next; {local assignments?}
  TempPtr^.Data := 'D';
End; {Change}

Begin
  new(CurrentPtr);
  CurrentPtr^.Data := 'A';
  new(CurrentPtr^.Next);
  CurrentPtr^.Next^.Data := 'B';
  write(CurrentPtr^.Data);
  write(CurrentPtr^.Next^.Data);
  Change(CurrentPtr);
  write(CurrentPtr^.Data);
  writeln(CurrentPtr^.Next^.Data);
End. {Passage}
