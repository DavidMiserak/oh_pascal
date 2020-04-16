
Type 
  StringTYPE    = packed array[1..80] Of char;
  WordPOINT     = ^WordStoreTYPE;
  WordStoreTYPE = Record
    Word   : StringTYPE;
    Before, After : WordPOINT;
  End; {Other definitions and declarations.}

Procedure AddAWord(Var Current : WordPOINT; NewWord : StringTYPE);
{Adds the string NewWord to an alphabetically ordered binary tree.}

Begin
  If Current = Nil Then
    Begin
      new(Current);
      Current^.Word   := NewWord;
      Current^.Before := Nil;
      Current^.After  := Nil;
    End
  Else If NewWord < Current^.Word
         Then AddAWord(Current^.Before, NewWord)
  Else If Current^.Word < NewWord
         Then AddAWord(Current^.After, NewWord)
  Else {The word is a duplicate--NewWord=Current^.Word.}
End; {AddAWord}
