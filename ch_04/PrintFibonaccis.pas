program PrintFibonaccis (input, output);
{Prints the m-th through n-th Fibonacci numbers.}
var Counter, FirstFib, LastFib, {will represent m and n}
    CurrentFibonacci, NextFibonacci : integer;
procedure GetNextFibonacci(var Last, Current : integer);
{Generates the next Fibonacci number.}
var Temporary : integer;
   begin
      Temporary := Last + Current;
      Last      := Current;
      Current   := Temporary
   end; {Get Next Fibonacci}
begin
   writeln('This program fins the m-th through n-th Fibonacci');
   writeln('numbers. Enter m and n.  Be sure m is at least 3.');
   readln (FirstFib, LastFib);
   writeln('Fibonaccis ', FirstFib:1, ' through ', LastFib:1, ' are:');
   CurrentFibonacci := 0; {Initialize the sequence.}
   NextFibonacci    := 1;
   for Counter := 3 to FirstFib-1 do
      GetNextFibonacci(CurrentFibonacci, NextFibonacci);
   for Counter := FirstFib to LastFib do begin
      GetNextFibonacci(CurrentFibonacci, NextFibonacci);
      write(NextFibonacci:4);
   end; {for}
   writeln;
end.
