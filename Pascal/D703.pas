program D703;
var
	n, k, i, ptr : integer;
	list, value : array[1..10000] of longint;
begin
	readln(n, k);
	for i := 1 to n do
		read(value[i]);
	for i := 1 to n do
		read(list[i]);
	ptr := k;
	if ptr = 0 then 
		begin
			writeln('End');
			exit;
		end;
	while list[ptr] <> 0 do
		begin
			writeln(value[ptr]);
			ptr := list[ptr];
		end;
	writeln(value[ptr]);
	writeln('End');
end.