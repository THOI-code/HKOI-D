program D803;
var
	n, i, j : integer;
	tmp : longint;
	a : array[1..100] of longint;
begin
	readln(n);
	for i := 1 to n do
		read(a[i]);
	for i := 0 to n - 1 do
		begin
			tmp := a[i + 1];
			for j := i downto 0 do
				if (j = 0) or (tmp > a[j])  then begin
					a[j + 1] := tmp;
					break;
				end
				else
					a[j + 1] := a[j];
			for j := 1 to i + 1 do
				write(a[j], ' ');
			writeln;
		end;
end.