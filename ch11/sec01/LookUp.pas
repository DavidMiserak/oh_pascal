Procedure LookUp(PhoneBook : BookTYPE);
 {Asks for an trues to look up a particular phone number.}

Var 
  Area, Prefix, Number, i : integer;

Begin
  write('Enter the number in three parts: XXX XXX XXXX    ');
  read(Area);
  read(Prefix);
  read(Number);
  i := 0;
  Repeat
    i := i + 1;
  Until ((Area = PhoneBook[i].Area)
        And (Prefix = PhoneBook[i].Prefix)
        And (Number = PhoneBook[i].Number))
        Or (i = 100);
  {Postcondition: If the name was found it's in the ith component.}
  write('The mystery name was ')
  If (Area = PhoneBook[i].Area) And (Prefix = PhoneBook[i].Prefix)
     And (Number = PhoneBook[i].Number)
    Then writeln(PhoneBook[i].Name)
  Else writeln('not in your book.')
End; {LookUp}
