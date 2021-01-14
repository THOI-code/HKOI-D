program D804;
const
	mxSize = 100000;
var
	n, m, i, j : longint;
	a, b : array[1..mxSize] of longint;
begin
	readln(n, m);
	for i := 1 to n do
		read(a[i]);
	for i := 1 to m do
		read(b[i]);
	i := 1;
	j := 1;
	while (i <= n) and (j <= m) do
		begin
			if a[i] < b[j] then
				begin
					write(a[i], ' ');
					inc(i);
				end
			else
				begin
					write(b[j], ' ');
					inc(j);
				end;
		end;
	while i <= n do
		begin
			write(a[i], ' ');
			inc(i);
		end;
	while j <= m do
		begin
			write(b[j], ' ');
			inc(j);
		end;
end.