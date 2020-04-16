Procedure Decode(RootPtr : NextNodePOINT);
{Decodes Morse code input. Each full letter must be followed by a blink.}

Var 
  CurrentPtr     : NextNodePOINT;
  InputCharacter : char;

Begin
  CurrentPtr := RootPtr;
  While Not eof Do
    Begin
      read(InputCharacter);
      Case InputCharacter Of 
        '.' : CurrentPtr := CurrentPtr^.Dot;
        '-' : CurrentPtr := CurrentPtr^.Dash;
        ' ' :
              Begin
                write(CurrentPtr^.Letter);
                CurrentPtr := RootPtr;
              End
      End {case}
    End; {while}
  writeln;
End; {Decode}
