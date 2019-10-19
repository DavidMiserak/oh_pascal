procedure TypeOut (Value: NutriTYPE);
{Prints the string that corresponds to a Value of NutriTYPE.}
begin
	case Value of
		protein   : write('protein');
		vitaminA  : write('vitamin A');
		vitaminC  : write('vitamin C');
		thiamine  : write('thiamine');
		riboflavin: write('riboflavin');
		niacin    : write('niacin');
		calcium   : write('calcium');
		iron      : write('iron');
	end; {case}
end; {TypeOut}