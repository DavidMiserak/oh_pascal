program Print(input, output);

procedure Echo;
var TheCharacter :  char;
   begin
      read(TheCharacter);
      write(TheCharacter);
      if TheCharacter <> '.' then begin Echo end;
   end; {Echo}

begin
   write('Type in a sentence that ends wit a period.');
   writeln;
   Echo;
   writeln;
end. {Print}
