
Program ForBed(input, output);
{A test bed for trying out for loops.}

Var 
  Outer, Middle, Inner : integer;
Begin
  For Outer  := 1 To 5 Do
    Begin
      For Middle := 1 To 5 Do
        Begin
          For Inner  := 1 To 5 Do
            Begin
              write  (Outer : 5);
              write  (Middle:5);
              write  (Inner : 5);
              writeln(' Wow, am I getting dizy!');
            End
        End
    End
End. {ForBed}
