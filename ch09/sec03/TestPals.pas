
Program TestPals(input, output);
{Decides if the user has typed in a palindrome}

Const 
  MAX = 80; {Longest allowed input string.}

Type 
  StringTYPE = packed array [1 .. MAX] Of char;

Var 
  Phrase : StringTYPE;
  Length : integer;

Procedure ReadThePhrase(Var Phrase : StringTYPE; Var Last : integer);
{Read the phrase and return it's length}
Begin
  Last := 0;
  While Not eoln And (Last < MAX) Do
    Begin
      Last := Last + 1;
      read(Phrase[Last]);
    End; {while}
 {Postcondition: Phrase[1] .. Phrase[Last] holds the phrase.}
  readln;
 {Get rid of end-of-line.}
End; {ReadThePhrase}

Function Palindrome(Var Phrase : StringTYPE; Var Last : integer) : boolean;
{Return TRUE if phrase holds a palindrom. Dues NOT error-check blank lines.}

Var 
  First : integer;

Begin
  First := 1;
  While ((First + 1) < Last) And (Phrase[First] = Phrase[Last]) Do
    Begin
      Last := Last - 1; {Move the subscripts closer together.}
      First := First + 1;
    End; {while}
 {Postcondition: We've inspected the whole phrase of found a mismatch.}
  Palindrome := (Phrase[First] = Phrase[Last]);
End; {Palindrome}

Procedure FixThePhrase(Var Scrunch : StringTYPE; Var Last : integer);
{Capitalized the phrase, removes spaces and punctuation.}

Var 
  Current, i : integer;

Begin
  Current := 1;
  While Current <= Last Do
    Begin
  {Precondition: Scrunch[Current] .. Scrunch[Last] is unknown}
      If Scrunch[Current] In ['a' .. 'z'] Then
        Begin
          Scrunch[Current] := chr(ord(Scrunch[Current]) - ord('a') + ord('A'));
        End; {if}
      If Scrunch[Current] In ['A' .. 'Z'] Then
        Begin
          Current := Current + 1;
   {The stored phrase is one letter longer.}
        End
      Else
        Begin
          For i := Current + 1 To Last Do
            Begin
              Scrunch[i-1] := Scrunch[i]
            End; {for}
          Last := Last - 1;
        End; {else}
    End; {while}
 {Postcondition: Scrunch[1] .. Scrunch[Last] are capitalized letters.}
End; {FixThePhrase}

Begin {TestPals}
  writeln('Ty[e in a palindrome for me to check ("yo" to quit).');
  Repeat
    ReadThePhrase(Phrase, Length);
    FixThePhrase(Phrase, Length);
    If Palindrome (Phrase, Length)
      Then
      Begin
        writeln('It was a palindrome.')
      End
    Else
      Begin
        writeln('It wasn''t a palindrome.')
      End
  Until (Phrase[1] In ['y','Y']) And (Phrase[2] In ['o','O']);
End. {TestPals}
