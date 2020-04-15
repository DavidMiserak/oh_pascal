procedure GotoXY(Column, Row: integer);
{Moves the cursor. Terminal must obey ANSI/VT100 escape sequences.}

const ESCAPE = 27; {The ASCII position of the ESCAPE key.}

begin
   {I've used 6 seperate write statements to avoid confusion.}
   write(chr(ESCAPE));
   write('[');
   write(Column:1); {The field width must be 1 to avoid extra blanks.}
   write(';');
   write(Row:1);
   write('H')
end; {GotoXY}
