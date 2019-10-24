program Passage (input, output);
{Demonstrates some effects of passing a pointer as a value parameter.}

type NodePOINT = ^ NodeTYPE;
	 NodeTYPE = record
	 	Next: NodePOINT;
	 	Data: char;
	 end;

var CurrentPtr: NodePOINT;

procedure Change(TempPtr: NodePOINT);
	begin
		TempPtr^.Data := 'C'    ; {Which of these are}
		TempPtr := TempPtr^.Next; {local assignments?}
		TempPtr^.Data := 'D';
	end; {Change}

begin
	new(CurrentPtr);
	CurrentPtr^.Data := 'A';
	new(CurrentPtr^.Next);
	CurrentPtr^.Next^.Data := 'B';
	write(CurrentPtr^.Data);
	write(CurrentPtr^.Next^.Data);
	Change(CurrentPtr);
	write(CurrentPtr^.Data);
	writeln(CurrentPtr^.Next^.Data);
end. {Passage}