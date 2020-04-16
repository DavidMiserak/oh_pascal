
Program KeyTypes (input, output);
{Compared the jumps required by QWERTY and Dvorak keyboards.}

Type 
  CharSetTYPE = set Of char;

Var 
  QWERTYHome, DvorakHome, QWERTYOthers, DvorakOthers, Valid : CharSetTYPE;
  QWERTYJumps, DvorakJumps, Total                           : integer;
  Current                                                   : char;

Begin
  Valid := ['a' .. 'z', 'A' .. 'Z'];
  QWERTYHome := ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l',
                'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'];

  DvorakHome := ['a', 'n', 'i', 's', 'f', 'e', 'd', 't', 'h', 'o', 'r',
                'A', 'N', 'I', 'S', 'F', 'E', 'D', 'T', 'H', 'O', 'R'];

  QWERTYOthers := ['a' .. 'z', 'A' .. 'Z'] - QWERTYHome;
  DvorakOthers := ['a' .. 'z', 'A' .. 'Z'] - DvorakHome;
  QWERTYJumps := 0;
  DvorakJumps := 0;
  Total := 0;
  While Not eof Do
    Begin
      read(Current);
      If Current In Valid Then
        Begin
          Total := Total + 1;
          If Current In QWERTYOthers Then
            Begin
              QWERTYJumps := QWERTYJumps + 1;
            End;
          If Current In DvorakOthers Then
            Begin
              DvorakJumps := DvorakJumps + 1;
            End {counting the jumps}
        End {counting the Valid characters}
    End; {while}
  write('Total input was: ');
  writeln(Total: 1);
  write('QWERTY Jumps: ');
  writeln(QWERTYJumps: 1);
  write('Dvorak Jumps: ');
  writeln(DvorakJumps: 1);
End. {KeyTypes}
