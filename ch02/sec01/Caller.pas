program Caller (input, output);
{Show a sequence of procedure calls.}

procedure First;
	begin
		writeln('In procedure First');
	end; {First}

procedure Second;
	begin
		writeln('Second begins...');
		First;
		writeln('Second ends...');
	end; {Second}

procedure Third;
	begin
		writeln('Third begins...');
		Second;
		writeln('Third ends...');
	end; {Third}

begin
	writeln('Main program begins...');
	Third;
	writeln('Main program ends...');
end. {Caller}