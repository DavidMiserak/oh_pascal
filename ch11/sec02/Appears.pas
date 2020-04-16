
Program Appears(input, output);
{Uses an associative array to count word appearances.}

Const 
  MAXdata   = 500; {Number of different words.}
  MAXlength =  10; {Length of longest individual word.}

Type 
  StringTYPE = Record
    Length : 0 .. MAXlength;
    Data   : packed array [1 .. MAXlength] Of char;
  End;
  EntryTYPE = Record {one word}
    Info  : StringTYPE;
    Count : integer;
  End;
  AssociativeTYPE = Record
    Length : integer; {The number of different words.}
    List   : array [1 .. MAXdata] Of EntryTYPE;
  End;

Var 
  AllWords        : AssociativeTYPE;
  OneWord         : StringTYPE;
  Position, Count : integer;

{****************************************************************}
{I'll get the string-handling subprogram out of the way first.}
Procedure ReadString(Var Value : StringTYPE);
 {Read a full line. Return a zero-length string if the line is empty.}

Begin
  Value.Length := 0;
  While Not eoln And (Value.Length < MAXlength) Do
    Begin
      Value.Length := Value.Length + 1;
      read(Value.Data[Value.Length]);
    End; {while}
  readln;
End; {ReadString}

Procedure WriteString(Value : StringTYPE);
 {Write the string contents of Value without a newline.}

Var 
  i: integer;

Begin
  For i := 1 To Value.Length Do
    write(Value.Data[i])
End; {WriteString}

Procedure Blank(Var Value : StringTYPE);
 {Store null characters in the string.}

Var 
  i: integer;

Begin
  Value.Length := 0;
  For i := 1 To MAXlength Do
    Value.Data[i] := chr(0);
End; {Blank}

Function Equal(Value1, Value2 : StringTYPE) : boolean;
 {TRUE if the strings are equal in length and content.}

Var 
  i : integer;

Begin
  If Value1.Length <> Value2.Length
    Then
    Begin
      Equal := FALSE
    End
  Else
    Begin
      i := 1;
      While (Value1.Data[i] = Value2.Data[i]) And (i < Value1.Length) Do
        Begin
          i := i + 1
        End;
    {Postcondition: if the current components are equal, the strings are too.}
      Equal := Value1.Data[i] = Value2.Data[i]
    End
End; {Equal}

Function Length(Value : StringTYPE) : integer;
 {Represents the length of the stored string.}
Begin
  Length := Value.Length
End; {Length}

{****************************************************************}
{Next, we'll take care of the AssociativeTYPE primitives.}
Procedure LookUp(Var Data     : AssociativeTYPE; {The whole array.}
                     Entry    : StringTYPE;      {What we want.}
                 Var Position : integer);        {Where it will be.}

 {Looks up a string and makes an entry for it if it's absent.}
Begin
  With Data Do
    Begin
      List[Length + 1].Info := Entry;
   {Store it at the end to make the search easy.}
      Position := 1;
      While Not Equal (List[Position].Info, Entry) Do
        Begin
          Position := Position + 1;
        End;
   {Postcondition: the word we want is in component Position.}
      If Position = Length + 1 Then
        Begin
    {We found it, but in the last slot, so it must be a new entry.}
          List[Position].Count := 0; {No previous instances of this work.}
          Length := Length + 1; {Lengthen the array of words.}
        End
      Else
        Begin {It's in component Position}
          Blank(List[Length + 1].Info); {Remove the word we stored.}
        End {if}
    End {with}
End; {LookUp}

Procedure Initialize(Var Data : AssociativeTYPE);
 {Initializes the count of entries.}
Begin
  Data.Length := 0;
End; {Initialize}

Procedure Increment(Var Data : AssociativeTYPE; Position : integer);
 {Add 1 to the count associated with Entry.}
Begin
  Data.List[Position].Count := Data.List[Position].Count + 1;
End; {Increment}

Function ReturnLength(Data: AssociativeTYPE) : integer;
 {Represents the number of entries in Data}
Begin
  ReturnLength := Data.Length
End; {ReturnLength}

Function ReturnCount (Data : AssociativeTYPE; Position : integer) : integer;
 {Represents the count associated with a particular entry.}
Begin
  ReturnCount := Data.List[Position].Count
End; {ReturnCount}

Procedure ReturnWord (Data      : AssociativeTYPE;
                      Position  : integer;
                      Var AWord : StringTYPE);

Begin
  AWord := Data.List[Position].Info
End; {ReturnWord}

Begin {main program}
  Initialize(AllWords);
  writeln('Give me a file of words to count.');
  While Not eof And (ReturnLength(AllWords) < MAXdata) Do
    Begin
      ReadString(OneWord);
      LookUp(AllWords, OneWord, Position);
      Increment(AllWords, Position); {We counted a word.}
    End; {while}
 {All the MAXlength-letter words were counted.}
  write(ReturnLength(AllWords): 1);
  writeln(' different words read. Number of appearances was...');
  For Count := 1 To ReturnLength(AllWords) Do
    Begin
      ReturnWord(AllWords, Count, OneWord);
      WriteString(OneWord);
      writeln(ReturnCount(AllWords, Count): 3)
    End
End. {Appears}
