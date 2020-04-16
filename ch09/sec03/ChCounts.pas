
Program ChCount(input, output);
{Count input characters, print relative frequency of lower-case letters.}

Type 
  CountTYPE = array[char] Of integer;

Var 
  CountArray : CountTYPE; {CountArray holds the character counts.}
  Ch         : char;      {Ch holds the current input character.}
  Total,                  {Total counts the total number of letters.}
  LineCount  : integer;   {LineCount helps produce neat output.}

Procedure Initialize(Var CountArray : CountTYPE);
{Initalized the CountTYPE structure.}

Var 
  Position : char;

Begin
  For Position := chr(0) To chr(127) Do
    Begin
      CountArray[Position] := 0;
    End;
End; {Initialize}

Procedure CountData(Var CountArray : CountTYPE; Ch : char);
{Count the appearance of a character.}
Begin
  CountArray[Ch] := CountArray[Ch] + 1;
End; {CountData}

Function CountWas(CountArray : CountTYPE; Ch : char) : integer;
{Returns the number of times Ch was counted.}
Begin
  CountWas := CountArray[Ch];
End; {CountWas}

Begin {ChCount}
 {the initialization segment}
  writeln('Counting letter frequencies...');
  Total := 0;
  Initialize(CountArray);

 {The processing segment}
  While Not eof Do
    Begin
 {Count appearances of all available characters.}
      read(Ch);
      CountData(CountArray, Ch);
      Total := Total + 1;
    End; {while}
 {We know individual and overall character counts.}

 {the results segment}
  writeln('Lower-case frequencies (among all input characters):');
  LineCount := 1;
  For Ch := 'a' To 'z' Do
    Begin {Print the output table.}
      write(Ch);
      write(' = ');
      write (100.0 * (CountWas(CountArray, Ch)/Total): 4: 2);
      write('% ');
      If (LineCount Mod 5) = 0 Then
        Begin
          writeln
        End;
      LineCount := LineCount + 1; {Newline after every fifth character.}
    End; {for}
  writeln;
End. {ChCount}
