
Program Tutor(input, output);
{Mercilessy drills the user in multiplication.}

Const 
  EXITlimit = 3;

Var 
  Multiplier, Multiplicand,  {Drills the Multiplier times table,}
  Answer, Correct : integer; {from Multiplier * Multiplicand on up.}

Begin
  write ('Time to multiply. What''s a number you hate? ');
  readln (Multiplier);
  write ('How high should I start the drill? ');
  readln(Multiplicand);
  Correct := 0;
  Repeat
    write('What is ');
    write (Multiplier: 1);
    write(' times ');
    write(Multiplicand: 1);
    write('? ');
    readln(Answer);
    If Answer = (Multiplier * Multiplicand) Then
      Begin
        Correct := Correct + 1;
        write('Right!!!   ');
      End
    Else
      Begin
        write('Wrong!!!   ');
      End; {if}
    Multiplicand := Multiplicand + 1;
  Until Correct = EXITlimit;
 {Postcondition: The user made ERRORlimit mistakes}
  writeln('I hope you appreciate the beauty of math now.');
End. {Tutor}
