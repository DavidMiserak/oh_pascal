
Program Hanoi(input, output);
{Recursiveley solves the Towers of Hanoi problem. Moves disks from A to C.}

Var 
  Height : integer;

Procedure Move(Height : integer; FromPeg, ToPeg, UsingPeg : char);


{Recursive procedure for determining moves. Keep this order -- from,
 to, using -- in mind when you read the recursive calls.}
Begin
  If Height = 1 Then
    Begin
      write('Move a disk from ');
      write(FromPeg);
      write(' to ');
      write(ToPeg);
      writeln;
    End
  Else
    Begin
      Move (Height-1, FromPeg, UsingPeg, ToPeg);
      write('Move a disk from ');
      write(FromPeg);
      write(' to ');
      write(ToPeg);
      writeln;
      Move(Height-1, UsingPeg, ToPeg, FromPeg);
    End {if}
End; {Move}

Begin
  write('How man disks are you going to start with? ');
  readln(Height);
  Move(Height, 'A', 'C', 'B')
End. {Hanoi}
