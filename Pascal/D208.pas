program D208;
var
	i, n : integer;
	mx, secondmx, t : longint;
begin
	readln(n);
	mx := -2147483648;
	secondmx := -2147483648;
	for i := 1 to n do
		begin
			read(t);
			if t >= mx then 
				begin
					secondmx := mx;
					mx := t;
				end
			else if t > secondmx then secondmx := t;
		end;
	writeln(mx);
	writeln(secondmx);
	readln; //two readln becoz of read!! omg
	readln;
end.