
Program StringIn(input, output);
{Demonstates Standard Pascal string input.}

Const 
  LIMIT = 15;                {The maximum string length.}
  BLANK = '               '; {Fifteen blanks.}

Type 
  StringType = packed Array [1 .. LIMIT] Of char;

Var 
  Element : StringType;
  Current : integer;

Begin
  Element := BLANK; {Initalize the string array.}
  Current := 0;
  writeln('Please typoe in the name of your favorite element.');
  While (input ^ > ' ') And (Current <= LIMIT) Do
    Begin
      Current := Current + 1;
      read(Element[Current]);
    End; {while}
  write('Few elements are as laid back as ');
  writeln(Element);
End. {StringIn}
