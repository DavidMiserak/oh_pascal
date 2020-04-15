
Program Describe(input, output);
{Finds out how long a word is. Then, reads the word and reports on}
{any letters whose alphabetical value equals their position in the word.}

Var 
  Length,             {of the word that's being checked}
  Position : integer; {in the word as we read it}
  Current  : char;

Function TheyMatch(Place: integer; Letter: char): boolean;
{TRUE if Letter is in alphabetical position Place}

Var 
  PositionInAlphabet: integer;

Begin
  PositionInAlphabet := 1 + (ord(Letter) - ord('a'));
  TheyMatch := PositionInAlphabet = Place;
End; {TheyMatch}

Begin
  write('How many letters are in your word? ');
  read(Length);
 {We know how much input data there will be.}
  readln;
 {We've gotten rid of extra characters (like the carriage return).}
  write('Okay, type in the word. ');
  For Position := 1 To Length Do
    Begin
      read(Current);
      If TheyMatch(Position, Current) Then
        Begin
          write(Current);
        End
      Else
        Begin
          write('*');
        End {if}
  {We've indicated the letter described its alphabetical posions.}
    End; {For}
  writeln;
End. {Describe}
