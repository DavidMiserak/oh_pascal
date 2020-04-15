
Program Words(input, output);
{A state filter that couns words that are sperated be one or more blanks.}

Var 
  InAWord, ItWasBlank: boolean;
  Count: integer;
  Ch: char;

Begin
  writeln('Say something poetic so I can count words.');
  Count   := 0;
  InAWord := FALSE;
  While Not eof Do
    Begin
      read(Ch);
      If Ch = ' '
        Then ItWasBlank := TRUE
      Else
        Begin {Ch was a character.}
          ItWasBlank := FALSE;
          InAWord    := TRUE;
        End;
      If ItWasBlank And InAWord Then
        Begin {A word just ended.}
          InAWord := FALSE;
          Count := Count + 1;
        End; {if}
    End; {while}
  write('The number of words was: ');
  writeln(Count: 1);
End. {Words}
