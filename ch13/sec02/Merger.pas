
Program Merger(main, Extra, Merged, Output);
{Merges Main and Extra into Merged, preserving ordering.}
{Assumes that the files are ordered and that their last lines are marked.}

Const 
  ENDmarker = -1;

Var 
  Main, Extra, Merged     : text;
  MainNumber, ExtraNumber : integer;

Begin
  writeln('Merging "Main" and "Extra" into "Merged".');
  reset(Main);
  reset(Extra);
  rewrite(Merged);
  readln(Main, MainNumber);
  readln(Extra, ExtraNumber);
{We're ready to go.}
  While (MainNumber <> ENDmarker)
        And (ExtraNumber <> ENDmarker) Do
    Begin
      If MainNumber < ExtraNumber Then
        Begin
          writeln(Merged, MainNumber);
          readln(Extra, MainNumber);
        End
      Else
        Begin
          writeln(Merged, ExtraNumber);
          readln(Extra, ExtraNumber);
        End
    End; {while}
{Postcondition: One source file is 'empty', so flush the other into Merged.}
  While MainNumber <> ENDmarker Do
    Begin
      writeln(Merged, MainNumber);
      readln(Merged, MainNumber);
    End; {the Main-flushing loop}
{Postcondition: All contents of Main are Merged.}
  writeln('File merger complete.')
End. {Merger}
