program Project(input, output);
{Develops an income projection for two alternative salary offers.}

const YEARS = 10;     {We'll run this projection for ten years.}

var Year: integer;
CurrentA, CurrentB,   {The current yearly pay rates.}
TotalA, TotalB: real; {The running totals for each plan.}

procedure PlanA(var Current, Total: real);
{Calculates the 10% yearly raise of Plan A.}
begin
	Current := 1.1*Current;
	Total   := Total + Current;
end; {PlanA}

procedure PlanB(var Current, Total: real);
{Calculates the monthly raises of Plan B.}
var Month: integer;
begin
	for Month := 1 to 12 do begin
		Current := Current + ((0.10/12.0)*Current)
	end;
	Total := Total + Current;
end; {PlanB}

begin
	CurrentA := 18000.00;
	CurrentB := 18000.00;
	TotalA   :=  1500.00; {PlanA starts with the $1,500 bonus.}
	TotalB   :=     0.00;
	{All variables have been initialized.}
	for Year := 1 to YEARS do begin
		write  ('Year ');
		write  (Year: 2);
		PlanA(CurrentA, TotalA);
		write  (CurrentA: 12:2);
		write  (TotalA: 12:2);
		{We've calculated and printed a year according to PlanA.}
		PlanA(CurrentB, TotalB);
		write  (CurrentB: 12:2);
		writeln(TotalB: 12:2);
		{We've calculated and printed a year according to PlanB.}
	end;
end. {Project}
