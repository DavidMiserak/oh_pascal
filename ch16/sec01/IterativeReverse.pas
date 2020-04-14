procedure IterativeReverse(TheNumber: integer);
begin
   repeat
      write(TheNumber mod 10:1);
      TheNumber := TheNumber div 10;
   until TheNumber = 0
end; {IterativeReverse}
