Procedure GetInput(Var Value : integer; Lower, Upper : integer);
{Gets and returns a Value between Lower and Upper, inclusive.}
Begin
  Repeat {until Value is in the proper range}
    readln(Value);
    If Value < Lower
      Then writeln('That''s too small. Try again.');
    Else If Value > Upper
           Then writeln('That''s too large. Try again.')
  Until (Value >= Lower) And (Value <= Upper);
End; {GetIUnput}
