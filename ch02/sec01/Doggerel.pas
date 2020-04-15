
Program Doggerel(input, output);
{Shows the basic for of a procedure delaration.}

Procedure Spout;
{Spouts the following bit of doggerel, or bad poetry.}
Begin
  writeln('Celery, raw, develops the jaw;');
  write('but celery, stewed, is more quietly chewed.')
End; {Spout}

Begin {The 'main' program, Doggerel}
  write('Here is a famous poem by Ogden Nash.');
  writeln; {Call the standard procedure writeln.}
  Spout;   {Call the brand new procedure Spout.}
  writeln;
  writeln('Did you want to hear that again?');
  Spout;
  writeln;
End. {Doggerel}
