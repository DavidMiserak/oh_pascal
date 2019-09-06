program Shopper(input, output);
{Provides a guide for shopping in today's increasingly complex world.}
var Age	:  integer;

begin
   write('How old are you? ');
   readln(Age);
   if (Age < 18) or (Age > 34) then begin
      writeln('Uh oh ...you''re not in prime consumption years.');
      writeln('Better stay home and watch MTV.');
   end
   else begin
      writeln('Go shop unitl you drop.');
   end;
   writeln;
end. {Shopper}
