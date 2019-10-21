procedure WriteString (Value: StringTYPE);
	{Write the string contents of Value without a newline.}
	var i: integer;
	begin
		for i := 1 to Value.Length do write(Value.Data[i])
	end; {WriteString}