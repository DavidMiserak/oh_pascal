procedure ClearScreen;
{Clears the screen. Terminal must obey ANSI/VT100 escape sequences.}

const ESCAPE = 27; {The ASCII position of the ESCAPE key.}

begin
   write(chr(ESCAPE), '[2J')
end; {ClearScreen}
