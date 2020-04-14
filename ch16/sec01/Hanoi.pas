program Hanoi(input, output);
{Recursiveley solves the Towers of Hanoi problem. Moves disks from A to C.}

var Height: integer;

procedure Move(Height : integer; FromPeg, ToPeg, UsingPeg: char);
{Recursive procedure for determining moves. Keep this order -- from,
 to, using -- in mind when you read the recursive calls.}
begin
   if Height = 1 then begin
      write('Move a disk from ');
      write(FromPeg);
      write(' to ');
      write(ToPeg);
      writeln;
   end else begin
      Move (Height-1, FromPeg, UsingPeg, ToPeg);
      write('Move a disk from ');
      write(FromPeg);
      write(' to ');
      write(ToPeg);
      writeln;
      Move(Height-1, UsingPeg, ToPeg, FromPeg);
   end {if}
end; {Move}

begin
   write('How man disks are you going to start with? ');
   readln(Height);
   Move(Height, 'A', 'C', 'B')
end. {Hanoi}
