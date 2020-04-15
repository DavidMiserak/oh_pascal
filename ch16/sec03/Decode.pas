procedure Decode(RootPtr: NextNodePOINT);
{Decodes Morse code input. Each full letter must be followed by a blink.}

var
   CurrentPtr	  : NextNodePOINT;
   InputCharacter : char;

begin
   CurrentPtr := RootPtr;
   while not eof do begin
      read(InputCharacter);
      case InputCharacter of
	'.' : CurrentPtr := CurrentPtr^.Dot;
	'-' : CurrentPtr := CurrentPtr^.Dash;
	' ' : begin
	   write(CurrentPtr^.Letter);
	   CurrentPtr := RootPtr;
	end
      end {case}
   end; {while}
   writeln;
end; {Decode}
