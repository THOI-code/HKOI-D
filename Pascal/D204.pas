program D204;
uses math;
var
	n, i : integer;
begin
	readln(n);
	//4 3 2 1 0 1 2 3 4
	//abs(n div 2 - i + 1)
	//0 1 3 5 7 5 3 1 0
	//abs((i - 1) * 2 - 1, ((n + 1) div 2 - 1) * 4 - 2 - (i - 1) * 2 - 1) 
	for i := 1 to n do
		if (i <> 1) and (i <> n) then
			writeln('':abs(n div 2 - i + 1), '#', '':min((i - 1) * 2 - 1, ((n + 1) div 2 - 1) * 4 - 2 - (i - 1) * 2 + 1), '#')
		else
			writeln('':abs(n div 2 - i + 1), '#');
	readln;
end.