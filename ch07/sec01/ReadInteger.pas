Procedure ReadInteger(Var Number : integer);
{A robust form of read for positive integer input.}

Var 
  Ch: char; {For the junk characters, if any.}

Begin
  While Not (input ^ In ['0' .. '9']) Do
    Begin
      read(Ch);
    End; {while}
 {Postcondition: the next character is a digit.}
  read(Number);
End; {ReadInteger}
