
Program LoopBed(input, output);
{A test bed program for loops.}

Var 
  Count, Total, Limit : integer;
  Current             : integer; {Make this easy to change.}

Begin {LoopBed}
  writeln('Enter number of numbers, followed by numbers.');
  Total := 0;
  Count := 0;
  read(Limit);
  Repeat
    read(Current);
    Total := Total + Current;
    Count := Count + 1;
  Until (Count = Limit) Or (Current = 5);
  writeln(Count);
  writeln(Total);
End. {LoopBed}
