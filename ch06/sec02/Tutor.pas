program Tutor (input, output);
{Mercilessy drills the user in multiplication.}
const EXITlimit = 3;
var Multiplier, Multiplicand, {Drills the Multiplier times table,}
Answer, Correct: integer; {from Multiplier * Multiplicand on up.}
begin
	write ('Time to multiply. What''s a number you hate? ');
	readln (Multiplier);
	write ('How high should I start the drill? ');
	readln(Multiplicand);
	Correct := 0;
	repeat
		write('What is '); write (Multiplier: 1);
		write(' times '); write(Multiplicand: 1); write('? ');
		readln(Answer);
		if Answer = (Multiplier * Multiplicand) then begin
			Correct := Correct + 1;
			write('Right!!!   ');
		end
		else begin
			write('Wrong!!!   ');
		end; {if}
		Multiplicand := Multiplicand + 1;
	until Correct = EXITlimit;
	{Postcondition: The user made ERRORlimit mistakes}
	writeln('I hope you appreciate the beauty of math now.');
end. {Tutor}
