Procedure TypeIn(Var Category : NutriType);
{Read a string and assigned the proper value to Category.}

Var 
  Name : STRING; {NOTE: this type is not Standard Pascal.}

Begin
  readln(Name); {NOTE: string input is not Standard Pascal.}
  If Name = 'protien' {NOTE: comparing unequal length isn't Standard Pascal.}
    Then Category := protien
  Else If Name = 'vitamin A'
         Then Category := vitaminA
  Else If Name = 'vitamin C'
         Then Category := vitaminC
  Else If Name = 'thiamine'
         Then Category := thiamine
  Else If Name = 'riboflavin'
         Then Category := riboflavin
  Else If Name = 'niacin'
         Then Category := niacin
  Else If Name = 'calcium'
         Then Category := calcium
  Else If Name = 'iron'
         Then Category := iron
  Else write('ERROR -- Category is undefined.')
End; {TypeIn}
