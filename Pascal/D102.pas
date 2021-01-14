program D102;
var
	c : char;
	r : double;
begin
	readln(c, r);
	writeln('$', (r + 0.05) / 2:0:1);
end.