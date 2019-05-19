program TailorSeries (input, output);
{Demonstrates the assignment statement.}
var NeckSize, ShoeSize, HatSize, ArmLength : real;
    WaistLine, Weight                      : integer;
begin
	writeln ('This program computes sizes for a male customer.');
	writeln ('Please enter the customer''s waistline, in inches.');
	readln  (WaistLine);
	writeln ('Please enter the customer''s weight, in pounds.');
	readln  (Weight);

	NeckSize  := 3.0 * (Weight / Waistline);
	HatSize   := NeckSize / 2.125;
	ShoeSize  := 50.0 * (Waistline / Weight);
	ArmLength := Waistline / 2.0;

	writeln ('Neck Size is ' , NeckSize:2:2);
	writeln ('Hat Size is '  , HatSize:2:2);
	writeln ('Shoe Size is ' , ShoeSize:2:2);
	writeln ('Arm Length is ', ArmLength:2:2)
end. {TailorSeries}
