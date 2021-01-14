program D808;
var
	n, i : longint;
	a : array[1..100000] of longint;
	ans : longint;

procedure swap(var a, b: longint);
begin
	if @a = @b then
		exit;
	a := a xor b;
	b := a xor b;
	a := a xor b;
end;

procedure quicksort (l, r : longint);
var	
	p, i, j : longint;
begin
	if l > r then
		exit;
	ans := ans + r - l + 1;
	p := a[r];
	i := l;
	for j := l to r - 1 do
		begin
			if a[j] <= p then
				begin
					swap(a[i], a[j]);
					inc(i);
				end;
		end;
	swap(a[i], a[r]);
	quicksort(l, i - 1);
	quicksort(i + 1, r);
end;

begin
	readln(n);
	ans := 0;
	for i := 1 to n do
		read(a[i]);
	quicksort(1, n);
	for i := 1 to n do
		write(a[i], ' ');
	writeln;
	writeln(ans);
	readln;
	readln;
end.