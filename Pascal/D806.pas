program D806;
var
	n : integer;
procedure partition(l, r : integer);
begin
	if l = r then
		exit;
	partition(l, (l + r) div 2);
	partition((l + r) div 2 + 1, r);
	writeln(l, ' ', (l + r) div 2, ' ', (l + r) div 2 + 1, ' ',  r);
end;
begin
	readln(n);
	partition(1, n);
end.