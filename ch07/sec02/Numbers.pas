
Program Numbers(input, output);
{Prints only whole numbers, one per line.}

Var 
  Ch                  : char;
  NonDigit, InANumber : boolean;
Begin
  writeln('Type in the list of ingredients.');
  While Not eof Do
    Begin
      read(Ch);
      If Not (Ch In ['0' .. '9'])
        Then NonDigit := TRUE
      Else
        Begin {Ch was a digit.}
          NonDigit  := FALSE;
          InANumber := TRUE;
          write(Ch);
        End;
      If NonDigit And InANumber Then
        Begin {The state has changed.}
          InANumber := FALSE;
          writeln;
        End; {if}
    End; {while}
End. {Numbers}
