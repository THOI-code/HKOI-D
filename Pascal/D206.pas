program D206;
var
	n : longint;
begin
	readln(n);
	while n <> 1 do
		begin
			writeln(n);
			if n mod 2 = 0 then
				n := n div 2
			else 
				n := 3 * n + 1;
		end;
	writeln('1');
end.