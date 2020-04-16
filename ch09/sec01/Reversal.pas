
Program Reversal(input, output);
{Reads a line of input, then prints it in reverse.}

Const 
  LIMIT = 80;

Type 
  ArrayTYPE = array[1 .. LIMIT] Of char;

Var 
  Last,                {the current sentence length}
  Current : integer;   {the for loop's counter variable}
  Hold    : ArrayTYPE; {the array variable}

Begin
  writeln('Type in a sentence that''s upto 80 letters long.');
  Last := 0;
  While Not eoln And (Last < LIMIT) Do
    Begin
      Last := Last + 1;
      read(Hold[Last]);
    End; {while}
 {Postcondition: Hold[1] throuch Hold[Last] holds the sentence.}
  readln;
  For Current := Last Downto 1 Do
    Begin
      write(Hold[Current]);
    End; {for}
  writeln;
 {We've printed them in reverse order.}
End. {Reversal}
