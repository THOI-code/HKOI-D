program D802;
var
	n, b, i, j: integer;
	a : array[1..10000] of longint;
	cnt : longint;

procedure swap(var a, b : longint);
begin
	if @a = @b then
		exit;
	a := a xor b;
	b := a xor b;
	a := a xor b;
end;

begin
	readln(n, b);
	cnt := 0;
	for i := 1 to n do
		read(a[i]);
	if b = 0 then
		for i := 1 to n - 1 do
			for j := n - 1 downto 1 do
				if a[j] > a[j + 1]  then
					begin
						swap(a[j], a[j + 1]);
						inc(cnt);
					end else
	else
		for i := 1 to n - 1 do
			for j := n - 1 downto 1 do
				if a[j] < a[j + 1]  then
					begin
						swap(a[j], a[j + 1]);
						inc(cnt);
					end;
	writeln(cnt);
	for i := 1 to n do
		write(a[i], ' ');
end.