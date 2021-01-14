program D807;
var
	n, i, j, p : longint;	
	a : array[1..100000] of longint;

procedure swap(var a, b: longint);
begin
	if @a = @b then
		exit;
	a := a xor b;
	b := a xor b;
	a := a xor b;
end;

begin
	readln(n);
	for i := 1 to n do
		read(a[i]);
	p := a[n];
	i := 1;
	for j := 1 to n - 1 do
		if a[j] <= p then
			begin
				swap(a[i], a[j]);
				inc(i);
			end;
	swap(a[n], a[i]);
	for i := 1 to n do
		write(a[i], ' ');
end.