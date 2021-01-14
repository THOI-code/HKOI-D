program D107;
var
	n, rt, rt2 : int64;
	sqfl, trifl : boolean;
begin
	readln(n);
	rt := trunc(sqrt(n));
	rt2 := trunc(sqrt(2 * n));
	sqfl := rt * rt = n;
	trifl := rt2 * (rt2 + 1) = 2 * n; 
	if sqfl and trifl then
		writeln('Both')
	else if sqfl then
		writeln('Square')
	else if trifl then
		writeln('Triangular')
	else
		writeln('Neither');
end.	