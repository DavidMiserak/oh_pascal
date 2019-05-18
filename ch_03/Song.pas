program Song (input, output);
{Demonstrates declaration of procedures without parameters.}
procedure Chorus; {Print the chorus}
begin
	writeln ('Oh, I Don''t care too much for Army life!');
	writeln ('Gee Mom, I wanna go back where the roses grow');
	writeln ('But they won''t let me go home.');
end; {Chorus}

procedure FirstVerse; {Print the first verse.}
begin
	writeln ('They say that in the Army, the coffee''s mighty fine.');
	writeln ('It''s good for cuts and bruises, and tastes like iodine.');
end; {FirstVerse}

procedure SecondVerse; {Print the second verse.}
begin
	writeln ('They say that in the Army, the biscuits are real fine.');
	writeln ('One rolled off a table, and killed a pal of mine.');
end; {FirstVerse}

begin {Song}
	FirstVerse;
	Chorus;
	writeln;
	SecondVerse;
	Chorus
end. {Song}
