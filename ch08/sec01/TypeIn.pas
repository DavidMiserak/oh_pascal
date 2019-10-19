procedure TypeIn (var Category: NutriType);
{Read a string and assigned the proper value to Category.}
var Name: STRING; {NOTE: this type is not Standard Pascal.}
begin
	readln(Name); {NOTE: string input is not Standard Pascal.}
	if Name = 'protien' {NOTE: comparing unequal length isn't Standard Pascal.}
		then Category := protien
	else if Name = 'vitamin A'
		then Category := vitaminA
	else if Name = 'vitamin C'
		then Category := vitaminC
	else if Name = 'thiamine'
		then Category := thiamine
	else if Name = 'riboflavin'
		then Category := riboflavin
	else if Name = 'niacin'
		then Category := niacin
	else if Name = 'calcium'
		then Category := calcium
	else if Name = 'iron'
		then Category := iron
	else write('ERROR -- Category is undefined.')
end; {TypeIn}