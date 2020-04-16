
Program Common(output, First, Second, Third);
{Finds a common entry in the sorted files First, Second, and Third.}

Var 
  First, Second, Third : text;
  Name1, Name2, Name3  : char;

Begin
  writeln('Looking for a common line in "First", "Second", and "Third".');
  reset(First);
  reset(Second);
  reset(Third);
  readln(First, Name1);
  readln(Second, Name2);
  readln(Third, Name3);
 {We have the first value from each file.}
  Repeat
    If Name1 < Name2 Then
      Begin
        readln(First, Name1)
      End;
    If Name2 < Name3 Then
      Begin
        readln(Second, Name2)
      End;
    If Name3 < Name1 Then
      Begin
        readln(Third, Name3)
      End;
  Until (Name1 = Name2) And (Name2 = Name3);
 {Postcondition: The current value from each file is identical.}
  write('The common value in files First, Second, and Third is: ');
  writeln(Name1); {Note that we're writing to the terminal.}
End. {Common}
