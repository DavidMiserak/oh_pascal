
Program Splitter(numbers, odds, events, output);
{Splits a file of numbers into separate odds and evens files.}

Var 
  numbers, odds, evens : text;    {They're all files of characters...}
  Current              : integer; {...but we can read integers as through they were typed in.}

Begin
  writeln('Splitting "numbers"...');
  reset(numbers);
 {We're prepared to read from numbers.}
  rewrite(odds);
  rewrite(evens);
 {We're prepared to write to odds and evens.}
  While Not eof(numbers) Do
    Begin
      readln(numbers, Current);
      If odd(Current)
        Then
        Begin
          writeln(odds, Current: 1)
        End
      Else
        Begin
          writeln(evens, Current: 1)
        End
    End; {while}
 {All the numbers have been read and echoed to new files.}
  writeln('All finished creating files "odds" and "evens".');
End. {Splitter}
