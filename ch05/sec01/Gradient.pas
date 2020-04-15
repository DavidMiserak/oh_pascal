
Program Gradient(input, output);
{Makes an appropriate comment about a user's grade.}

Var 
  Score : integer;

Begin
  write('What grade did you get? ');
  readln(Score);
  Case Score Of 
    0: ; {This empy statement is a null action}
    10:
        Begin
          writeln('You are a True Programming God!');
          writeln('Prepare to embrace your destiny.');
        End;
    7, 8, 9: writeln('Good!');
    5, 6   : writeln('Barely Passing!');
    2, 3, 4: writeln('Flunking!');
    1:
       Begin
         writeln('Your grade is in the forbidden zone.');
         writeln('You better come to office hours.');
       End;
  End; {the case statement}
End. {Gradient}
