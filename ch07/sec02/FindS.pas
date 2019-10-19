program FindS (input, output);
{Reports the position of the fist 's' it reads.}
const SENTINEL = 's';
      NULL = 0; {The ASCI nul character's position}
var Position: integer;
    Letter  : char;
begin
	Position := 0;
	Letter   := chr(NULL);
	write('All set to look for an ');
	writeln(SENTINEL);
	while not eof and (Letter <> SENTINEL) do begin
		read(Letter);
		Position := Position + 1;
	end; {while}
	{Postcondition: if the sentinel was found, it's at Position.}
	{Question: are the end-of-lines added to the count?}
	if Letter = SENTINEL then begin
		write('The sentinel was found in position ');
		writeln(Position: 1);
	end
	else begin writeln ('No sentinel was found.') end;
end. {FindS}