program ArrayDigitCounter(input, output);
{Counts the number of times each digit appears in a sequence of numbers.}
type Totals = array ['0'..'9'] of integer;
var Digits       : Totals;
    CurrentDigit : char;
    Count, Limit : integer;
begin
	for CurrentDigit := '0' to '9' do begin
		Digits[CurrentDigit] := 0;
	end;
	writeln('How man digits long is your input value?');
	readln (Limit);
	writeln('All right, enter the value.');
	
	for Count := 1 to Limit do begin
		read (CurrentDigit);
		Digits[CurrentDigit] := Digits[CurrentDigit] + 1;
	end;
	
	writeln('The number of times each digit occured is:');
	for CurrentDigit := '0' to '4' do begin
		write(CurrentDigit, ':', Digits[CurrentDigit]:2, '    ');
	end;
	writeln;
	for CurrentDigit := '5' to '9' do begin
		write(CurrentDigit, ':', Digits[CurrentDigit]:2, '    ');
	end;
	writeln;
end. {ArrayDigitCounter}
