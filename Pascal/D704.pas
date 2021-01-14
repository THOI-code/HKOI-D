program D704;
var
	n, k, i, ptr, x, y : longint;
	list, value : array[1..10001] of longint;
begin
	readln(n, k);
	for i := 1 to n do
		read(value[i]);
	for i := 1 to n do
		read(list[i]);
	readln(x, y);
	if y = 0 then
		begin
			writeln(n + 1);
			writeln(x, ' ', k);
			writeln(-1);
			exit;
		end;
	ptr := k;
	i := 0;
	while i < y - 1 do
		begin
			ptr := list[ptr];
			inc(i);
		end;
	writeln(k);
	writeln(x, ' ', list[ptr]);
	writeln(ptr, ' ', value[ptr], ' ', n + 1);
end.