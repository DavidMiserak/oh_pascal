
Program Magic(input, output);
{Reads and decides if a square is magic.}

Const 
  MAX        = 4;  {Size of the square.}
  MAXsquared = 16; {The number of unique numbers and it should hold.}

Type 
  MagicTYPE    = array[1 .. MAX, 1 .. MAX] Of integer;
  DiagonalTYPE = (left, right);

Var 
  Square            : MagicTYPE;
  CheckSum, Current : integer;
  StillMagic        : boolean;

Procedure Load(Var Square : MagicTYPE);
{Reads the magic square.}

Var 
  Row, Column : integer;

Begin
  For Row := 1 To MAX Do
    Begin
      For Column := 1 To MAX Do
        Begin
          read(Square[Row, Column]);
        End; {We've read a single row.}
      readln;
    End; {We've read every row.}
End; {Load}

Function Unique(Square : MagicTYPE): boolean;
{TRUE if Square holds each number in the range 1 .. MAX*MAX}

Type CheckTYPE = array [1 .. MAXsquared] Of boolean;
{I'll mark components TRUE if the number has appeared.}

Var Appears: CheckTYPE;
  Row, Column, Current: integer;
  Result: boolean;

Begin
  For Current := 1 To MAXsquared 
    Do
    Begin
      Appears[Current] := FALSE
    End;
 {As far as we know, nothing has appeared yet.}
  For Row := 1 To MAX Do
    Begin
      For Column := 1 To MAX Do
        Begin
          Appears[Square[Row,Column]] := TRUE
        End {When a number does appear, mark it TRUE.}
    End;
 {Postcondition: a FALSE entry means the number didn't appear.}
  Result := TRUE; {Temporarily, at least, the square is unique.}
  For Current := 1 To sqr (MAX) Do
    Begin
      If Appears[Current] = FALSE
        Then
        Begin
          Result := FALSE
        End
    End; {for}
 {Postcondition: Result is TRUE if every number appeared.}
  Unique := Result;
End; {Unique}

Function SumRow(Square : MagicTYPE; Row : integer) : integer;
{Adds the values in one row.}

Var 
  Column, Sum: integer;

Begin
  Sum := 0;
  For Column := 1 To MAX Do
    Begin
      Sum := Sum + Square[Row, Column];
    End; {We've added the contents of each column in one row.}
  SumRow := Sum
End; {SumRow}

Function SumColumn(Square : MagicTYPE; Column : integer) : integer;
{Adds the values in one column.}

Var 
  Row, Sum: integer;

Begin
  Sum := 0;
  For Row := 1 To MAX Do
    Begin
      Sum := Sum + Square[Row, Column];
    End; {We've added the contents of each row in one column.}
  SumColumn := Sum
End; {SumColumn}

Function SumDiagonal(Square: MagicTYPE; Which: DiagonalTYPE): integer;
{Adds the values in one diagonal.}

Var 
  Point, Sum: integer;

Begin
  Sum := 0;
  Case Which Of 
    left:
          For Point := 1 To MAX Do
            Begin
              Sum := Sum + Square[Point,Point];
            End; {We've added the upper-left to lower-right diagonal.}
    right:
           For Point := 1 To MAX Do
             Begin
               Sum := Sum + Square[Point, (MAX - Point) + 1];
             End; {We've added the upper-right to lower-left diagonal.}
  End; {case}
  SumDiagonal := Sum;
End; {SumDiagonal}

Begin {Magic}
  write('Reading a magic square with side ');
  writeln(MAX: 1);
  Load(Square);
  If Unique(Square) Then
    Begin
      CheckSum   := SumDiagonal(Square, left);
      StillMagic := SumDiagonal(Square, right) = CheckSum;
      Current := 0;
      While StillMagic And (Current < MAX) Do
        Begin
          Current    := Current + 1;
          StillMagic := (SumRow(Square, Current) = CheckSum)
                        And (SumColumn(Square, Current) = CheckSum);
        End; {The loop test}
    End; {Passing the Unique test}
  If StillMagic
    Then write('Square was indeed magic, with a sum of ')
  Else write('Square was not magic. Lef diagonal check sum was ');
  writeln(CheckSum: 1);
End. {Magic}
