
Program FindS(input, output);
{Reports the position of the fist 's' it reads.}

Const 
  SENTINEL = 's';
  NULL = 0; {The ASCI nul character's position}

Var 
  Position: integer;
  Letter  : char;

Begin
  Position := 0;
  Letter   := chr(NULL);
  write('All set to look for an ');
  writeln(SENTINEL);
  While Not eof And (Letter <> SENTINEL) Do
    Begin
      read(Letter);
      Position := Position + 1;
    End; {while}
 {Postcondition: if the sentinel was found, it's at Position.}
 {Question: are the end-of-lines added to the count?}
  If Letter = SENTINEL Then
    Begin
      write('The sentinel was found in position ');
      writeln(Position: 1);
    End
  Else
    Begin
      writeln ('No sentinel was found.')
    End;
End. {FindS}
