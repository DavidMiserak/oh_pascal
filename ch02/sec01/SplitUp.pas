
Program SplitUp(input, output);
{Uses procedures to get and multiply two numbers.}

Var 
  First, Second, Product : integer;
{First, new procedures are declared.}

Procedure GetTheInfo(Var Number1, Number2: integer);
 {Get the user's favorite numbers.}
Begin
  write('Give me two whole numbers to multiply. ');
  read(Number1);
  readln(Number2);
End; {GetTheInfo}

Procedure Calculate (Number1, Number2: integer; Var Product: integer);
 {Calculates and returns the first two arguments' product.}
Begin
  Product := Number1 * Number2;
End; {Calculate}

Procedure PrintTheNews(Answer: integer);
 {Prints its argument.}
Begin
  write('Oh, no! Their product is ');
  write(Answer:1);
  writeln('. ho auspicious!')
End; {PrintTheNews}

{Then, they're used in the main program.}
Begin
  GetTheInfo(First, Second);         {These arguments are changed.}
 {We have our data.}
  Calculate(First, Second, Product); {Two arguments are used, and one is changed.}
 {We've calculated a result.}
  PrintTheNews(Product);             {These arguments are used.}
 {We've printed the output.}
End. {SplitUp}
