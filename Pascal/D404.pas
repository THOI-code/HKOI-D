program D404;
uses math;
const 
	mxN = 100;
var
	n, m, i, j, a, b : integer;
	c, sp : char;
	mat : array[1..mxN, 1..mxN] of real;
begin
	readln(n);
	for i := 1 to n do
		for j := 1 to n do 
			read(mat[i][j]);
	readln(m);
	for i := 1 to m do
		begin
			readln(a, b, sp, c);
			if c = 'A' then
				writeln(mat[min(a, b)][max(a, b)]:0:1)
			else
				writeln(mat[max(a, b)][min(a, b)]:0:1);
		end;
end.