procedure ReadString(var Value: StringTYPE);
	{Read a full line. Return a zero-length string if the line is empty.}
	begin
		Value.Length := 0;
		while not eoln and (Value.Length < MAX) do begin
			Value.Length := Value.Length + 1;
			read(Value.Data[Value.Length]);
		end; {while}
		readln;
	end; {ReadString}