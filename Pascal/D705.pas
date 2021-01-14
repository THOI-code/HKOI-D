program D705;
var
	n, k, i, ptr, y : longint;
	list, value : array[0..10000] of longint;
begin
	readln(n, k);
	for i := 1 to n do
		read(value[i]);
	for i := 1 to n do
		read(list[i]);
	ptr := k;
	readln(y);
	list[0] := 0;
	if y = 1 then
		begin
			writeln(list[ptr]);
			writeln(-1);
			exit;
		end;
	i := 1;
	while i < y - 1 do
		begin
			ptr := list[ptr];
			inc(i);
		end;
	writeln(k);
	write(ptr, ' ');
	write(value[ptr], ' ');
	writeln(list[list[ptr]]);
end.