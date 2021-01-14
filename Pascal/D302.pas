program D302;
var
	s : string;
	i, cnt : integer;
begin
	readln(s);
	cnt := 0;
	for i := 1 to length(s) do
		begin
			if s[i] = ' ' then inc(cnt);
		end;
	writeln(length(s));
	writeln(cnt);
end.