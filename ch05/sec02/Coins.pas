
Program Coins(input, output);
{Computes minimun coinage for making change.}

Const 
  DOLLAR  = 100;
  HALF    =  50;
  QUARTER =  25;
  DIME    =  10;
  NICKEL  =   5;
  PENNY   =   1;

Var 
  Price, Given : real;   {Input real dollar amounts}
  Change       : integer;      {... but use integer pennies internally.}
  ChangeIsDue  : boolean;

Function ConvertToPennies(Price, Given : real) : integer;
{Returns Price-Given expressed as a whole number of pennies.}
Begin
  ConvertToPennies := round(100.0*(Price-Given));
End; {ConvertToPennies}

Procedure GetChange(Coin : integer; Var Change : integer);
{Prints the number of cons. Reduces change by that many Coins.}

Var Pieces: integer;
Begin
  Pieces := Change Div Coin;
  Change := Change - (Pieces * Coin);
 {We know how many doins to give and what's still left over.}
  write(Pieces:1);
  Case Coin Of {Picks the proper action.}
    DOLLAR  : write(' dollar');
    HALF    : write(' fifty-cent piece');
    QUARTER : write(' quater');
    DIME    : write(' dime');
    NICKEL  : write(' nickel');
    PENNY   : write(' cent');
  End; {case}
  If Pieces > 1 Then
    Begin
      write('s');
    End; {if}
  writeln;
End;{GetChange}

Begin {Coins}
  write('What''s the price? ');
  readln(Price);
  write('How much did you get?');
  readln(Given);
 {We may, or may not, be given more than is actually due.}
  ChangeIsDue := (Price > Given);
  Change := abs(ConvertToPennies(Price, Given));
 {Potential change is dealt with as integer pennies.}
  If Change = 0 Then
    Begin
      writeln('Thanks!')
    End
  Else
    Begin
      If ChangeIsDue Then
        Begin
          write('Too little! You''re short by ')
        End
      Else
        Begin
          write ('Your change is exactly ')
        End; {ChangeIsDue if}

      If Change >= 100 Then
        Begin
          GetChange(DOLLAR, Change)
        End;
  {Remaining Change is less than one DOLLAR. The calls below are similar.}
      If Change >= 50 Then
        Begin
          GetChange(HALF, Change)
        End;
      If Change >= 25 Then
        Begin
          GetChange(QUARTER, Change)
        End;
      If Change >= 10 Then
        Begin
          GetChange(DIME, Change)
        End;
      If Change >=  5 Then
        Begin
          GetChange(NICKEL, Change)
        End;
      If Change >=  1 Then
        Begin
          GetChange(PENNY, Change)
        End;
    End; {Change=0 else part}
End. {Coins}
