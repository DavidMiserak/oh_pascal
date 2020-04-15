
Program LoveCon(input, output);
{Reports on the percentage of votes cast for each of three potential dates.}

Var 
  Vote, Total, Ones, Twos, Threes : integer;

Procedure Report (Total, One, Two, Three : integer);
{Prints the actual percentages.}
Begin {Report}
  write (trunc((One/Total)*100): 5);
  write('%');
  write (trunc((Two/Total)*100): 5);
  write('%');
  write (trunc((Three/Total)*100): 5);
  write('%');
  writeln;
End; {Report}

Begin {LoveCon}
  writeln('Please enter votes: 1, 2, or 3. Any other number quits.');
  Total  := 0;
  Ones   := 0;
  Twos   := 0;
  Threes := 0;
  read(Vote);
  writeln('   One   Two  Three'); {Label the output.}
  While Vote In [1 .. 3] Do
    Begin
      Total := Total + 1; {Count the total.}
      Case Vote Of        {Count each vote.}
        1: Ones := Ones + 1;
        2: Twos := Twos + 1;
        3: Threes := Threes + 1;
      End; {case}
      Report(Total, Ones, Twos, Threes); {Report the situation.}
      read(Vote);                        {Get the next vote.}

    End; {while}
  writeln('May all your dates be love connections!');
End. {LoveCon}
