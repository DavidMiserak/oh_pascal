program KeyTypes (input, output);
{Compared the jumps required by QWERTY and Dvorak keyboards.}

type CharSetTYPE = set of char;

var QWERTYHome, DvorakHome, QWERTYOthers, DvorakOthers, Valid: CharSetTYPE;
	QWERTYJumps, DvorakJumps, Total: integer;
	Current: char;

begin
	Valid := ['a' .. 'z', 'A' .. 'Z'];
	QWERTYHome := ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l',
	               'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'];

	DvorakHome := ['a', 'n', 'i', 's', 'f', 'e', 'd', 't', 'h', 'o', 'r',
	               'A', 'N', 'I', 'S', 'F', 'E', 'D', 'T', 'H', 'O', 'R'];

	QWERTYOthers := ['a' .. 'z', 'A' .. 'Z'] - QWERTYHome;
	DvorakOthers := ['a' .. 'z', 'A' .. 'Z'] - DvorakHome;
	QWERTYJumps := 0;
	DvorakJumps := 0;
	Total := 0;
	while not eof do begin
		read(Current);
		if Current in Valid then begin
			Total := Total + 1;
			if Current in QWERTYOthers then begin
				QWERTYJumps := QWERTYJumps + 1;
			end;
			if Current in DvorakOthers then begin
				DvorakJumps := DvorakJumps + 1;
			end {counting the jumps}
		end {counting the Valid characters}
	end; {while}
	write('Total input was: ');
	writeln(Total: 1);
	write('QWERTY Jumps: ');
	writeln(QWERTYJumps: 1);
	write('Dvorak Jumps: ');
	writeln(DvorakJumps: 1);
end. {KeyTypes}