program Bars (output);
{Draws three rows of characters using the for statement}
const DOLLARSIGN = '$';
var Income : integer;
    Symbol  :  char;
procedure DrawBar (Length : integer; BarCharacter: char);
{Prints BarCharacter exactly Length times.}
var Counter :  Integer;
   begin
      for Counter := 1 to Length do
	 write (BarCharacter);
      writeln;
   end; {DrawBar}
begin
   Income := 20;
   Symbol := '#';
   DrawBar(12, 'X');
   DrawBar(3*5, Symbol);
   DrawBar(Income, DOLLARSIGN)
end. {Bars}
