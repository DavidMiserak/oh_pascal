program AlphabetSoup (output);
{Uses for loop to print the alphabet forwar and backwards}
var CounterCharacter : char;
begin
	for CounterCharacter := 'A' to 'Z' do
		write(CounterCharacter);
	writeln;
	for CounterCharacter := 'z' downto 'a' do
		write(CounterCharacter);
	writeln;

end.
