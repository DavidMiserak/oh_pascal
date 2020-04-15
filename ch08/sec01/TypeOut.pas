Procedure TypeOut (Value : NutriTYPE);
{Prints the string that corresponds to a Value of NutriTYPE.}

Begin
  Case Value Of 
    protein   : write('protein');
    vitaminA  : write('vitamin A');
    vitaminC  : write('vitamin C');
    thiamine  : write('thiamine');
    riboflavin: write('riboflavin');
    niacin    : write('niacin');
    calcium   : write('calcium');
    iron      : write('iron');
  End; {case}
End; {TypeOut}
