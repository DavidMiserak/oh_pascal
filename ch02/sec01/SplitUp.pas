program SplitUp (input, output);
{Uses procedures to get and multiply two numbers.}
var First, Second, Product: integer;
{First, new procedures are declared.}
procedure GetTheInfo(var Number1, Number2: integer);
	{Get the user's favorite numbers.}
	begin
		write('Give me two whole numbers to multiply. ');
		read(Number1);
		readln(Number2);
	end; {GetTheInfo}
procedure Calculate (Number1, Number2: integer; var Product: integer);
	{Calculates and returns the first two arguments' product.}
	begin
		Product := Number1 * Number2;
	end; {Calculate}
procedure PrintTheNews(Answer: integer);
	{Prints its argument.}
	begin
		write('Oh, no! Their product is ');
		write(Answer: 1);
		writeln('. ho auspicious!')
	end; {PrintTheNews}
{Then, they;re used in the main program.}
begin
	GetTheInfo(First, Second);         {These arguments are changed.}
	{We have our data.}
	Calculate(First, Second, Product); {Two arguments are used, and one is changed.}
	{We've calculated a result.}
	PrintTheNews(Product);             {These arguments are used.}
	{We've printed the output.}
end. {SplitUp}