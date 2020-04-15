
Program Project(input, output);
{Develops an income projection for two alternative salary offers.}

Const 
  YEARS = 10; {We'll run this projection for ten years.}

Var 
  Year                : integer;
  CurrentA, CurrentB,         {The current yearly pay rates.}
  TotalA, TotalB      : real; {The running totals for each plan.}

Procedure PlanA(Var Current, Total : real);
{Calculates the 10% yearly raise of Plan A.}
Begin
  Current := 1.1*Current;
  Total   := Total + Current;
End; {PlanA}

Procedure PlanB(Var Current, Total: real);
{Calculates the monthly raises of Plan B.}

Var 
  Month: integer;

Begin
  For Month := 1 To 12 Do
    Begin
      Current := Current + ((0.10/12.0)*Current)
    End;
  Total := Total + Current;
End; {PlanB}

Begin
  CurrentA := 18000.00;
  CurrentB := 18000.00;
  TotalA   :=  1500.00; {PlanA starts with the $1,500 bonus.}
  TotalB   :=     0.00;
{All variables have been initialized.}
  For Year := 1 To YEARS Do
    Begin
      write('Year ');
      write(Year: 2);
      PlanA(CurrentA, TotalA);
      write(CurrentA:12:2);
      write(TotalA:12:2);
{We've calculated and printed a year according to PlanA.}
      PlanA(CurrentB, TotalB);
      write(CurrentB:12:2);
      writeln(TotalB:12:2);
{We've calculated and printed a year according to PlanB.}
    End;
End. {Project}
