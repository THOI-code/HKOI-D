program D109;
const
	dollars : array[0..5] of integer = (1000, 500, 100, 50, 20, 10);
var
	n, i : integer;
begin
	readln(n);
	for i := 0 to 5 do
		while n >= dollars[i] do
			begin
				n := n - dollars[i];
				writeln(dollars[i]);
			end;
end.