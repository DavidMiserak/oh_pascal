
Program Recur(input, output);
{Uses recursion to read a line and echo it in reverse.}

Procedure StackTheCharacters;

Var 
  TheCharacter :  char;

Begin
  read (TheCharacter);
  If Not eoln Then
    Begin
      StackTheCharacters; {The recursive call.}
    End;
  write(TheCharacter)
End; {StackTheCharacters}

Begin
  writeln('Enter a sentence that is not a palindrome.');
  StackTheCharacters; {The first call.}
  writeln;
End. {Recur}
