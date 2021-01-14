program D501;
var
	n, sum, i, t : integer;
	f : text;
begin
	assign(f, 'account.txt');
	reset(f);
	readln(f, n);
	sum := 0;
	for i := 1 to n do
		begin
			readln(f, t);
			sum := sum + t;
		end;
	close(f);
	writeln(sum);
end.
	