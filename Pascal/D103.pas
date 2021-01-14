program D103;
var
	a, b, c : integer;
begin
	readln(a);
	readln(b);
	readln(c);
	writeln(0.5 * a * b * sin(c / 180 * pi):0:3);
	readln;
end.