program Gradient (input, output);
{Makes an appropriate comment about a user's grade.}
var Score: integer;
begin
	write('What grade did you get? ');
	readln(Score);
	case Score of
		 0: ; {This empy statement is a null action}
		10: begin 
			writeln('You are a True Programming God!');
			writeln('Prepare to embrace your destiny.');
		    end;
		7, 8, 9: writeln('Good!');
		5, 6   : writeln('Barely Passing!');
		2, 3, 4: writeln('Flunking!');
		      1: begin
			      writeln('Your grade is in the forbidden zone.');
			      writeln('You better come to office hours.');
			 end;
	end; {the case statement}
end. {Gradient}

