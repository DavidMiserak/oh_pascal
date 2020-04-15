program Thread (input, output);
{Recursively finds and prints all exit paths from a maze.}

const
   MAXROW    = 12;
   MAXCOL    = 12;
   OPEN	     = ' ';
   THEWAYOUT = 's';

type ArrayTYPE = array[1..MAXROW,1..MAXCOL] of char;

var Maze: ArrayTYPE;

procedure StoreTheMaze (var Maze : ArrayTYPE);
{Reads in the maze.}

var i, j: integer;

begin
   for i := 1 to MAXROW do begin
      for j := 1 to MAXCOL do begin
	 read(Maze[i,j]);
      end;
      readln; {Get rid of the end-of-line.}
   end
end; {StoreTheMaze}

procedure PrintTheMaze(Maze : ArrayTYPE);
{Print the maze contens, shows the exit path}

var i, j: integer;

begin
   for i := 1 to MAXROW do begin
      for j := 1 to MAXCOL do begin
	 read(Maze[i,j]);
      end;
      readln; {Space between solutions}
   end
end; {PrintTheMaze}

function AtAnExit(Row, Col : integer): boolean;
{Tells whether or not we are on the border of the maze.}

begin
   AtAnExit := (Row = 1) or (Row = MAXROW) or (Col = 1) or (Col = MAXCOL);
end; {AtAnExit}

procedure Explore (Maze	: ArrayTYPE; Row, Col: integer);
{Recursive procedure for searching the maze.}

begin
   Maze[Row, Col] := THEWAYOUT;
   if AtAnExit(Row, Col) then PrintTheMaze(Maze)
      else begin {inpect the possible pathways}
	 {up}    if Maze[Row-1,Col] = OPEN then Explore(Maze, Row-1, Col);
	 {right} if Maze[Row,Col+1] = OPEN then Explore(Maze, Row, Col+1);
	 {down}  if Maze[Row+1,Col] = OPEN then Explore(Maze, Row+1, Col);
	 {left}  if Maze[Row,Col-1] = OPEN then Explore(Maze, Row, Col-1);
      end {else}
end; {Explore}

begin
   writeln('Reading the starting maze.');
   StoreTheMaze(Maze);
   writeln;
   writeln('Solution to the maze are:');
   Explore(Maze, 6, 6); {Start searching from the center.}
end. {Threader}
	 
