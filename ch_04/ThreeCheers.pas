program ThreeCheers(input, output);
const HOWMANY = 3;
var Cheers: integer;
begin
	for Cheers := 1 to HOWMANY do
		writeln('Hip hip, hooray!'); {This looks like a compound}
		writeln('Congratulations.'); {statement, but it isn't.}
end. {ThreeCheers}
