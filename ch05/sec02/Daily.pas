
Program Daily(input, output);
{Describes if a number will win a Califonia lottery game.}

Var 
  Bet1, Bet2, Bet3,        {The digits you bet.}
  Win1, Win2, Win3 : char; {The digits that won.}
  BetAmount        : real;

Procedure ReadDigits (Var Ch1, Ch2, Ch3: char);
{Read three digit character.}
Begin
  read(Ch1);
  read(Ch2);
  read(Ch3);
  readln;
End; {ReadDigits}

Function Identical(A1, A2, A3, B1, B2, B3 : char) : boolean;
{TRUE if the first three characters match the last three identically.}
Begin
  Identical := (A1 = B1) And (A2 = B2) And (A3 = B3);
End; {Identical}

Function AllPairs(A1, A2, A3, B1, B2, B3 : char) : boolean;
{TRUE if the first three characters match the last three in non-identical order.}
Begin
  AllPairs := ((A1 = B1) And (A2 = B3) And (A3 = B2)) Or
              ((A1 = B2) And (A2 = B1) And (A3 = B3)) Or
              ((A1 = B2) And (A2 = B3) And (A3 = B1)) Or
              ((A1 = B3) And (A2 = B1) And (A3 = B2)) Or
              ((A1 = B3) And (A2 = B2) And (A3 = B1));
End; {AllPairs}

Function AllUnique(A1, A2, A3 : char) : boolean;
{True if all three characters are different.}
Begin
  AllUnique := (A1 <> A2) And (A1 <> A3) And (A2 <> A3);
End; {AllUnique}

Begin
  write ('How much did you bet? ');
  readln(BetAmount);
  write ('Please enter the three digits you bet: ');
  ReadDigits(Bet1, Bet2, Bet3);
  write ('Please enter the tree winning digits: ');
  ReadDigits(Win1, Win2, Win3);
  If Identical(Bet1, Bet2, Bet3, Win1, Win2, Win3) Then
    Begin
      write  ('Congratulations on your match! You win $');
      writeln(BetAmount*500.0: 1:2);
    End
  Else
    Begin {no straight, but maybe a box}
      If AllPairs (Bet1, Bet2, Bet3, Win1, Win2, Win3) Then
        Begin
          If AllUnique(Bet1, Bet2, Bet3) Then
            Begin
              write  ('Congratulations on your box! You win $');
              writeln(BetAmount*80.0: 1:2);
            End
          Else
            Begin {box with duplicates}
              write  ('Congratulations on your duplicate box! You win $');
              writeln(BetAmount*160.0: 1:2);
            End {box with duplicates}
        End {all unique}
      Else
        Begin {Identicall and AllPairs were both FALSE}
          writeln('You lose!');
        End {there was a box}
    End {maybe a box}
End. {Daily}
