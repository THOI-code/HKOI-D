program D503;
var
	i, j : integer;
	a : array[0..5] of integer;
	f : text;
begin
	assign(f, 'chart.txt');
	rewrite(f);
	for i := 0 to 5 do
		read(a[i]);
	writeln(f, '+-------------------------+');
	for i := 1 to 10 do
		begin
			write(f, '| ');
				for j := 0 to 5 do
					if a[j] >= 11 - i then
						write(f, '### ')
					else
						write(f, '    ');
			writeln(f, '|');
		end;
	writeln(f, '+-------------------------+');
	close
end.