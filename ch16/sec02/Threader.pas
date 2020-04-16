
Program Thread (input, output);
{Recursively finds and prints all exit paths from a maze.}

Const 
  MAXROW    = 12;
  MAXCOL    = 12;
  OPEN      = ' ';
  THEWAYOUT = 's';

Type 
  ArrayTYPE = array[1..MAXROW,1..MAXCOL] Of char;

Var 
  Maze : ArrayTYPE;

Procedure StoreTheMaze(Var Maze : ArrayTYPE);
{Reads in the maze.}

Var 
  i, j : integer;

Begin
  For i := 1 To MAXROW Do
    Begin
      For j := 1 To MAXCOL Do
        Begin
          read(Maze[i,j]);
        End;
      readln; {Get rid of the end-of-line.}
    End
End; {StoreTheMaze}

Procedure PrintTheMaze(Maze : ArrayTYPE);
{Print the maze contens, shows the exit path}

Var i, j: integer;

Begin
  For i := 1 To MAXROW Do
    Begin
      For j := 1 To MAXCOL Do
        Begin
          read(Maze[i,j]);
        End;
      readln; {Space between solutions}
    End
End; {PrintTheMaze}

Function AtAnExit(Row, Col : integer): boolean;
{Tells whether or not we are on the border of the maze.}

Begin
  AtAnExit := (Row = 1) Or (Row = MAXROW) Or (Col = 1) Or (Col = MAXCOL);
End; {AtAnExit}

Procedure Explore (Maze : ArrayTYPE; Row, Col: integer);
{Recursive procedure for searching the maze.}

Begin
  Maze[Row, Col] := THEWAYOUT;
  If AtAnExit(Row, Col) Then PrintTheMaze(Maze)
  Else
    Begin {inpect the possible pathways}
  {up}
      If Maze[Row-1,Col] = OPEN Then Explore(Maze, Row-1, Col);
  {right}
      If Maze[Row,Col+1] = OPEN Then Explore(Maze, Row, Col+1);
  {down}
      If Maze[Row+1,Col] = OPEN Then Explore(Maze, Row+1, Col);
  {left}
      If Maze[Row,Col-1] = OPEN Then Explore(Maze, Row, Col-1);
    End {else}
End; {Explore}

Begin
  writeln('Reading the starting maze.');
  StoreTheMaze(Maze);
  writeln;
  writeln('Solution to the maze are:');
  Explore(Maze, 6, 6); {Start searching from the center.}
End. {Threader}
