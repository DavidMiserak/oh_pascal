
Program Multiply(input, output);
{Shows an assignment statement.}

Var 
  First, Second, Product : integer; {The variable declaration.}

Begin
  write('What are your favorite numbers ');
  read(First);                {Get and store the numbers.}
  readln(Second);
  Product := First * Second;  {Assign a new value to Product.}
  write('Thier product is ');
  write(Product:1);           {Use minimal spacing.}
  writeln('. How auspicious!')
End. {Multply}
