program Recur(input, output);
{Uses recursion to read a line and echo it in reverse.}

procedure StackTheCharacters;
var TheCharacter :  char;
   begin
      read (TheCharacter);
      if not eoln then begin
	 StackTheCharacters; {The recursive call.}
      end;
      write(TheCharacter)
   end; {StackTheCharacters}

begin
   writeln('Enter a sentence that is not a palindrome.');
   StackTheCharacters; {The first call.}
   writeln;
end. {Recur}
