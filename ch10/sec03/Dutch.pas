
Program Dutch(input, output);
{A test harness for a solution to the Dutch Flag problem.}

Const
  LIMIT     = 15;   {Size of the flag.}
  DEBUGGING = TRUE; {Controls a call of Print in FlagSort}

Type
  ColorTYPE = (red, white, blue);
  FlagTYPE  = array[1 .. LIMIT] Of ColorTYPE;

Var
  Flag : FlagTYPE;

Procedure Initialize(Var Flag : FlagTYPE);
 {A truly simple-minded procedure that initialized the flag.}

Var
  i : integer;

Begin
  For i := 1 To (LIMIT Div 3) Do
    Begin
      Flag[(3 * i) - 2] := red; {Alternate red, white, and blue.}
      Flag[(3 * i) - 1] := white;
      Flag[(3 * i)]     := blue;
    End
End; {Initialize}

Procedure PrintFlag(Flag : FlagTYPE);
 {Displays the content of the Flag array.}

Var
  Count : integer;

Begin
  For Count := 1 To LIMIT Do
    Begin
      Case Flag[Count] Of 
        red: write('R ');
        white: write('W ');
        blue: write('B ');
      End; {case}
    End; {for}
  writeln;
End; {PrintFlag}

Procedure FlagSort(Var Flag : FlagTYPE);
 {Sorts and array of mixed red, white, and blue values.}

Var
  RedBorder, WhiteBorder, BlueBorder : integer;

Procedure Swap(Var First, Second : ColorTYPE);
  {Exchanges two component values.}

Var Temp : ColorTYPE;

Begin
  Temp   := First;
  First  := Second;
  Second := Temp;
End; {Swap}

Begin {FlagSort}
  RedBorder   := 0;
  WhiteBorder := 1;
  BlueBorder  := LIMIT + 1;
  Repeat
    Case Flag[WhiteBorder] Of 
      white: WhiteBorder := WhiteBorder + 1;
      red:
           Begin
             RedBorder := RedBorder + 1;
             Swap(Flag[RedBorder], Flag[WhiteBorder]);
             WhiteBorder := WhiteBorder + 1;
           End;
      blue:
            Begin
              BlueBorder := BlueBorder - 1;
              Swap(Flag[WhiteBorder], Flag[BlueBorder]);
            End
    End; {case}
    If DEBUGGING Then
      Begin
        PrintFlag(Flag)
      End
  Until WhiteBorder = BlueBorder;
End; {FlagSort}

Begin {main program}
  writeln('Initial flag is:');
  Initialize(Flag);
  PrintFlag(Flag);
  writeln;
  FlagSort(Flag);
  writeln('Flag sort complete.')
End. {Dutch}
