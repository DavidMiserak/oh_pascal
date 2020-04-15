type StringTYPE = packed array[1..80] of char;
WordPOINT = ^WordStoreTYPE;
WordStoreTYPE = record
		   Word		 : StringTYPE;
		   Before, After : WordPOINT;
		end; {Other definitions and declarations.}

procedure AddAWord(var Current : WordPOINT; NewWord : StringTYPE);
{Adds the string NewWord to an alphabetically ordered binary tree.}

begin
   if Current = nil
      then begin
	 new(Current);
	 Current^.Word   := NewWord;
	 Current^.Before := nil;
	 Current^.After  := nil;
      end
   else if NewWord < Current^.Word
      then AddAWord(Current^.Before, NewWord)
      else if Current^.Word < NewWord
	 then AddAWord(Current^.After, NewWord)
	 else {The word is a duplicate--NewWord=Current^.Word.}
end; {AddAWord}
      
   
