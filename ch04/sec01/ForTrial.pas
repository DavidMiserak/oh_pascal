
Program ForTrial(output);
{Prints a popular California bottled-water drinking song.}

Var 
  Count : integer; {Count serves as the counter variable.}

Procedure Verse (Current: integer);
{Prints the Current verse of the song.}
Begin
  write  (Current: 1);
  write  (' salmon fillets on the lawn,');
  write  (Current: 1);
  writeln(' salmon fillets.');
  writeln('If one of those salman should happen to spawn,');
  write  (Current + 1: 1);
  write  (' salmon fillets on the lawn.');
End; {Verse}
Begin {ForTrial}
  For Count := 1 To 100 Do
    Begin
      Verse(Count);
      writeln
    End;
End. {ForTrial}
