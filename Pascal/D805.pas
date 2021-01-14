program D804;
const
	mxSize = 100000;
var
	c, d, n, m, i, j, k, p, o, start, stop : longint;
	a : array[1..mxSize] of longint;
	temp : array[1..mxSize] of longint;
begin
	readln(c, d);
	for i := 1 to c do
		read(a[i]);
	for k := 1 to d do
		begin
			readln(i, n, j, m);
			start := i;
			stop := m;
			p := start;
			while (i <= n) and (j <= m) do
				begin
					if a[i] < a[j] then
						begin
							temp[p] := a[i];
							inc(i);
							inc(p);
						end
					else
						begin
							temp[p] := a[j];
							inc(j);
							inc(p);
						end;
				end;
			while i <= n do
				begin
					temp[p] := a[i];
					inc(i);
					inc(p);
				end;
			while j <= m do
				begin
					temp[p] := a[j];
					inc(j);
					inc(p);
				end;
			for o := start to stop do
				begin
					write(temp[o], ' ');
					a[o] := temp[o];
				end;
			writeln;
		end;
end.