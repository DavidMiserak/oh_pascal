program Trader (input, output);
{Find the carat difference between weights in International and American pounds.}

const INTERNATIONALinKg = 0.45359237;
      USAinKg           = 0.4535924277; {All constants show weight in kilos.}
      ONEcarat          = 0.0002;

var PoundsToBuy, KgToBuy, KgToDeliver,
    KgToKeep, CaratsToKeep: real;

begin
	write('How man pounds are you buying? (to the nearest 0.1) ');
	readln(PoundsToBuy);
	KgToBuy      := PoundsToBuy * USAinKg;
	KgToDeliver  := PoundsToBuy * INTERNATIONALinKg;
	KgToKeep     := KgToBuy - KgToDeliver;
	CaratsToKeep := KgToKeep / ONEcarat;
	write('Difference in pounds: ');
	writeln(KgToKeep / USAinKg:12:4);
	write('Difference in carats: ');
	writeln(CaratsToKeep:12:1)
end. {Trader}